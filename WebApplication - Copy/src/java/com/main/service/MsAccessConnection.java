package com.main.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MsAccessConnection {

    //// line top be modified
    private static final String PORT = "3306";   /// make 3310 for exteranl mysql
    private static final String USERNAME = "root";  /// root for both
    private static final String PASSWORD = "";  // root for external set up

    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static Connection connection;
    public static final String URL = "jdbc:mysql://localhost:" + PORT + "/db_addoptimization";

    public static Connection getConnection() {
        try {
            Class.forName(DRIVER);
            if (connection == null || connection.isClosed()) {
                connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            }
            System.out.println("PORT = " + PORT);
        } catch (Exception e) {
            System.out.println(e);
        }
        return connection;
    }

    public static PreparedStatement preStateMent(String query) {
        try {
            return getConnection().prepareStatement(query);
        } catch (Exception e) {
            System.out.println("PreparedStatement preStateMent(String query) line number ");
        }
        return null;
    }

    public static void main(String[] args) {
        Integer chkUserName = chkUserName("1");
        System.out.println("chkUserName = " + chkUserName); 
//        getConnection();
//        try {
//            preStateMent("INSERT INTO tbl_product(`pCategory`)"
//                    + "VALUES"
//                    + " ('');").execute();
//            System.out.println("i am here ");
//        } catch (Exception e) {
//        }
    }

    public static Integer chkUserName(String string) {
        String username = "SELECT id FROM  `tbl_registration` WHERE  `txtUserName` LIKE  '%"+string+"%'";
        System.out.println("username = " + username);
        try {
            ResultSet executeQuery = preStateMent(username).executeQuery();
            while (executeQuery.next()) {
                return 1;
            }
            executeQuery.close();;
            return 0;
        } catch (Exception e) {
        }
        return 0;
    }
}
