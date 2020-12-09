package com.kochen.jdbc;

import java.sql.*;

public class JdbcTest {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");

        String url = "jdbc:mysql://localhost:3306/cooking";
        String username = "root";
        String password = "root";

        Connection connection = DriverManager.getConnection(url, username, password);
        Statement statement = connection.createStatement();

        String insertQuery = "insert into recipes (name, url) values(?, ?)";
        PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
        preparedStatement.setString(1, "Hacksuelze");
        preparedStatement.setString(2, "www.haennosbeste.de");
        preparedStatement.executeUpdate();

        String query = "select * from recipes";
        ResultSet resultSet = statement.executeQuery(query);

        while(resultSet.next()){
            int columnSize = resultSet.getMetaData().getColumnCount();
            for(int i = 1; i < columnSize; i++) {
                System.out.println(resultSet.getString(i));
            }

        }
    }

}
