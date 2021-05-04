package com.kochen.jbdc;

import com.mysql.cj.jdbc.MysqlDataSource;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class Connector {

    public static Statement connect() throws SQLException {

        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setUser("root");
        dataSource.setPassword("root");
        dataSource.setServerName("jdbc:mysql://172.42.0.41:3307/cooking?useSSL=false");

        Connection connection = dataSource.getConnection();
        Statement statement = connection.createStatement();
        return statement;
    }
}
