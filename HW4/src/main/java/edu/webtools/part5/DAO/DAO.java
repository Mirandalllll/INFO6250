package edu.webtools.part5.DAO;

import org.apache.commons.dbutils.DbUtils;
import org.springframework.stereotype.Component;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

@Component
public class DAO {
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/Webtools?useSSL=false&serverTimezone=UTC";
    static final String USER = "root";
    static final String PASSWORD = "1234";
    public Connection connection;

    public Connection getConnection() throws Exception {
        try {

            DbUtils.loadDriver(JDBC_DRIVER);
            this.connection = DriverManager.getConnection(DB_URL, USER, PASSWORD);
        } catch (SQLException ex) {
//            endConnection();
            System.out.println(ex);
            ex.printStackTrace();
            throw new Exception();
        }

//            endConnection();
        return this.connection;
    }
}
