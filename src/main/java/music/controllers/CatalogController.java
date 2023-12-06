package music.controllers;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

import music.business.*;
import music.data.*;
import music.util.CookieUtil;

public class CatalogController extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws ServletException, IOException {
        String requestURI = request.getRequestURI();
        String url;
        System.out.println(requestURI);
        if (requestURI.endsWith("/listen")) {
            url = listen(request, response);
        } else {
            if (requestURI.endsWith("/catalog")) {
                //Hiển thị Danh sach SP
                url = showProducts(request, response);
            }else{
                //hiển thị chi tiết SP
                url = showProduct(request, response);
            }
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request,
                       HttpServletResponse response)
            throws ServletException, IOException {
        String requestURI = request.getRequestURI();
        String url = "/catalog";
        if (requestURI.endsWith("/register")) {
            url = registerUser(request, response);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    private String showProduct(HttpServletRequest request,
                               HttpServletResponse response) {
        String productCode = request.getPathInfo();
        // This should never be null. But just to be safe.
        if (productCode != null) {
            productCode = productCode.substring(1);
            product product = ProductDB.selectProduct(productCode);
            HttpSession session = request.getSession();
            session.setAttribute("product", product);
        }
        return "/catalog/detail/index.jsp";
    }
    private String showProducts(HttpServletRequest request,
                                HttpServletResponse response) {
        String seacrh = request.getParameter("search");
        System.out.println("code in showProducts");
        List<product> products = null;
        if(seacrh != null){
            products = ProductDB.selectBySearch(seacrh);

        }else{
            products = ProductDB.selectProducts();
        }
        HttpSession session = request.getSession();
        session.setAttribute("products", products);
        return "/catalog/index_a.jsp";
    }

    private String listen(HttpServletRequest request,
                          HttpServletResponse response) {

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        // if the User object doesn't exist, check for the email cookie
        if (user == null) {
            Cookie[] cookies = request.getCookies();
            String emailAddress =
                    CookieUtil.getCookieValue(cookies, "emailCookie");
            // if the email cookie doesn't exist, go to the registration page
            if (emailAddress == null || emailAddress.equals("")) {
                return "/catalog/register.jsp";
            } else {
                user = UserDB.selectUser(emailAddress);
                // if a user for that email isn't in the database, go to the registration page
                if (user == null) {
                    return "/catalog/register.jsp";
                }
                session.setAttribute("user", user);
            }
        }

        product product = (music.business.product) session.getAttribute("product");

        Download download = new Download();
        download.setUser(user);
        download.setProductCode(product.getCode());
        DownloadDB.insert(download);


        return "/catalog/Fav.jsp";
    }

    private String registerUser(HttpServletRequest request,
                                HttpServletResponse response) {

        HttpSession session = request.getSession();
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        System.out.println("User ");
        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
//        if (UserDB.emailExists(email)) {
//            UserDB.update(user);
//        } else {
//            UserDB.insert(user);
//        }
        UserDB.insert(user);

        session.setAttribute("user", user);

        Cookie emailCookie = new Cookie("emailCookie", email);
        emailCookie.setMaxAge(60 * 60 * 24 * 365 * 2);
        emailCookie.setPath("/");
        response.addCookie(emailCookie);

        product product = (music.business.product) session.getAttribute("product");

        Download download = new Download();
        download.setUser(user);
        download.setProductCode(product.getCode());
        DownloadDB.insert(download);


        return "/catalog/Fav.jsp";
    }
}