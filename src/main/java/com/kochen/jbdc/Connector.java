package com.kochen.jbdc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Connector {

    public static Statement connect() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/cooking";
        String username = "root";
        String password = "root";
        Connection connection = DriverManager.getConnection(url, username, password);
        Statement statement = connection.createStatement();
        return statement;
    }
}
