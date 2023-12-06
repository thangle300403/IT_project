
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RedStore | Ecommerce Website Design</title>
    <link rel="stylesheet" href="<c:url value='/style.css'/> ">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>


<div class="header">
    <div class="container">
        <div class="navbar">
            <div class="logo">
                <a href="<c:url value='/index.jsp'/>"><img src="<c:url value='/images/logo.png'/>" alt="logo" width="125px"></a>
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="<c:url value='/admin'/>">
                        Admin</a></li>
                    <li><a href="<c:url value='/index.jsp'/>">Home</a></li>
                    <li><a href="<c:url value='/catalog' />">
                        Products</a></li>
                    <li><a href="<c:url value='/email' />">
                        Join Email List</a></li>
                </ul>
            </nav>
            <a href="<c:url value='/order/showCart'/>"><img src="<c:url value='/images/cart.png'/>" width="30px" height="30px"></a>
            <img src="<c:url value='/images/menu.png'/>" class="menu-icon" onclick="menutoggle()">
        </div>

    </div>
</div>