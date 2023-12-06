/* If the Products table in the music_jpa database doesn't contain any records,
 * you can use this class to populate the Product table.
 *
 * To do this in NetBeans, press SHIFT+F6
 * while in this window, or right click and select Run File. It is normal for
 * it to take a few minutes to run.
 *
 * After you have done this, you will want to change the
 * jakarta.persistence.schema-generation.database.action value in the
 * persistence.xml file to "none". Otherwise, the application will pause for
 * two or three minutes each time you start it when it first makes a database
 * call.
 */

package music.data;

import java.util.HashMap;
import java.util.Map;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import jakarta.persistence.spi.PersistenceUnitTransactionType;
import music.business.product;
import music.business.User;
import static org.eclipse.persistence.config.EntityManagerProperties.JDBC_DRIVER;
import static org.eclipse.persistence.config.EntityManagerProperties.JDBC_PASSWORD;
import static org.eclipse.persistence.config.EntityManagerProperties.JDBC_URL;
import static org.eclipse.persistence.config.EntityManagerProperties.JDBC_USER;
import static org.eclipse.persistence.config.PersistenceUnitProperties.TRANSACTION_TYPE;

public class PopulateDatabase {
    private static EntityManagerFactory emf;

    public static void insertProduct(product product) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.persist(product);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            em.close();
        }
    }
    public static void insertUser(User user) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {
            em.persist(user);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            em.close();
        }
    }

    public static void main(String[] args) {
        Map props = new HashMap();
        props.put(TRANSACTION_TYPE, PersistenceUnitTransactionType.RESOURCE_LOCAL.name());
        props.put(JDBC_DRIVER, "com.mysql.cj.jdbc.Driver");
        props.put(JDBC_URL, "jdbc:mysql://localhost:3306/badmin2");
        props.put(JDBC_USER, "sa");
        props.put(JDBC_PASSWORD, "1234");
        props.put("eclipselink.target-database", "MySQL");
        props.put("eclipselink.ddl-generation", "create-tables");
        props.put("eclipselink.ddl-generation.output-mode", "database");


        emf = Persistence.createEntityManagerFactory("musicStorePU", props);

        product product1 = new product();
        product1.setCode("8601");
        product1.setDescription("Yonex - Yonex Astrox 99");
        product1.setPrice(14.95);
        product1.setDetail("Yonex employs NAMD throughout the racket, including the frame, doubling the contact time with the shuttle for increased power");
        insertProduct(product1);



        product product2 = new product();
        product2.setCode("pf01");
        product2.setDescription("Yonex - Yonex Astrox 99 pro");
        product2.setPrice(12.95);
        product2.setDetail("The Yonex Astrox 99 Pro White version boasts the revolutionary ISOMETRIC™ signature, enhancing the sweet spot for improved gameplay");
        insertProduct(product2);

        product product3 = new product();
        product3.setCode("pf02");
        product3.setDescription("Yonex - Yonex Astrox 88d");
        product3.setPrice(14.95);
        product3.setDetail("The Astrox 88D has an overall length over 10mm longer, contributing to excellent smashing power");
        insertProduct(product3);

        product product4 = new product();
        product4.setCode("jr01");
        product4.setDescription("Yonex - Yonex Astrox 88d pro");
        product4.setPrice(14.95);
        product4.setDetail("The Yonex Astrox 88D Pro is a badminton racket designed for rear-court players, providing a balance of power and control for explosive smashes[1]. It gained success among top doubles players at the Yonex All England 2021[2].");
        insertProduct(product4);

        product product5 = new product();
        product5.setCode("as100");
        product5.setDescription("Yonex - Yonex Astrox 100zz");
        product5.setPrice(15.00);
        product5.setDetail("The Yonex Astrox 100ZZ is a badminton racket designed for powerful and aggressive play. It comes in two versions, 3U and 4U, with a handle size suitable for most players");
        insertProduct(product5);

        product product6 = new product();
        product6.setCode("nano1000");
        product6.setDescription("Yonex - Yonex Nanoflare 1000z");
        product6.setPrice(15.00);
        product6.setDetail("The Yonex Nanoflare 1000Z is a badminton racket designed for lightweight and flexible gameplay. It features a head-light design, providing agility in every shot. The racket is known for its ability to deliver speed and spin, making it suitable for players seeking enhanced performance.");
        insertProduct(product6);
    }
}