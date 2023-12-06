package music.data;

import java.util.List;
import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.persistence.TypedQuery;

import music.business.product;

public class ProductDB {

    public static product selectProduct(String code) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT p FROM product p " +
                "WHERE p.code = :code";
        TypedQuery<product> q = em.createQuery(qString, product.class);
        q.setParameter("code", code);
        product result = null;
        try {
            result = q.getSingleResult();
        } catch (NoResultException ex) {
            return null;
        } finally {
            em.close();
        }
        
        return (product)result;
    }
    
    public static product selectProduct(long productId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        
        return em.find(product.class, productId);
    }

    public static List<product> selectProducts() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT p from product p";
        TypedQuery<product> q = em.createQuery(qString, product.class);
        List<product> results = null;
        try {
            results = q.getResultList();
        } catch (NoResultException ex) {
            return null;
        } finally {
            em.close();
        }

        return results;
    }
    public static List<product> selectBySearch(String search) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT p FROM product p " +
                "WHERE p.description like :searchItem";
        TypedQuery<product> q = em.createQuery(qString, product.class);
        q.setParameter("searchItem", "%" + search.toLowerCase() + "%");
        List<product> results = null;
        try {
            results = q.getResultList();
        } catch (NoResultException ex) {
            return null;
        } finally {
            em.close();
        }
        return results;
    }
}