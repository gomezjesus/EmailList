/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author chuy_
 */
public class ConnectionDB {

    private Connection connection = null;
    private static final Logger logger = Logger.getLogger(ConnectionDB.class.getName());

    public ConnectionDB() {
        /*try {
            String host = "localhost";
            Class.forName("org.postgresql.Driver");
            String url = "jdbc:postgresql://" + host + ":5432/tec",
                    user = "postgres",
                    password = "Penco.123";
            connection = DriverManager.getConnection(url, user, password);
        } catch (SQLException sqle) {
            logger.log(Level.SEVERE, sqle.toString(), sqle);
            throw new RuntimeException(sqle);
        } catch (Exception e) {
            logger.log(Level.SEVERE, e.toString(), e);
        }*/
        try {
            String host = "localhost";
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://" + host + ":3306/tec",
                    user = "root",
                    password = "";
            connection = DriverManager.getConnection(url, user, password);
        } catch (SQLException sqle) {
            logger.log(Level.SEVERE, sqle.toString(), sqle);
            throw new RuntimeException(sqle);
        } catch (Exception e) {
            logger.log(Level.SEVERE, e.toString(), e);
        }
    }

    /**
     * @return the connection
     */
    public Connection getConnection() {
        return connection;
    }

    /**
     * @param connection the connection to set
     */
    public void setConnection(Connection connection) {
        this.connection = connection;
    }

}
