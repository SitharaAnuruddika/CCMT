/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itpm.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public final class DBConnectionUtil {

    static Connection conn = null;

    public static Connection getConnection() throws SQLException {
        if (conn != null) {
            return conn;
        }

        String database = "ITPM";
        String Username = "root";
        String password = "";
        return getConnection(database, Username, password);
    }

    private static Connection getConnection(String databaseName, String UserName, String password) throws SQLException {

        if (conn == null || conn.isClosed()) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + databaseName + "?user=" + UserName + "&password=" + password);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return conn;
    }

}
