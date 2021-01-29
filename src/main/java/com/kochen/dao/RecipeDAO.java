package com.kochen.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public abstract class RecipeDAO {

    public static ArrayList getAllRecipes() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/cooking";
        String username = "root";
        String password = "root";

        Connection connection = DriverManager.getConnection(url, username, password);
        Statement statement = connection.createStatement();

        String query = "select * from recipes";
        ResultSet resultSet = statement.executeQuery(query);

        ArrayList <Map> arrayList = new ArrayList();

        while(resultSet.next()){
            int columnSize = resultSet.getMetaData().getColumnCount();
            Map m = new HashMap<String, String>();
            for(int i = 1; i <= columnSize; i++) {
                m.put(resultSet.getMetaData().getColumnName(i), resultSet.getString(i));
            }
            arrayList.add(m);
        }

        resultSet.close();

        System.out.println(arrayList.size());
        System.out.println(arrayList);
        return arrayList;
    }

//    public ArrayList<Map> getRecipeNames() throws ClassNotFoundException, SQLException {
//        Class.forName("com.mysql.cj.jdbc.Driver");
//        String url = "jdbc:mysql://localhost:3306/cooking";
//        String username = "root";
//        String password = "root";
//
//        Connection connection = DriverManager.getConnection(url, username, password);
//        Statement statement = connection.createStatement();
//
//        String query = "select recipe_name from recipes";
//        ResultSet resultSet = statement.executeQuery(query);
//
//        ArrayList <Map> arrayList = new ArrayList();
//
//        while(resultSet.next()){
//            int columnSize = resultSet.getMetaData().getColumnCount();
////            for(int i = 1; i < columnSize; i++) {
////                Map m = new HashMap<String, String>();
////                m.put(resultSet.getMetaData().getColumnName(i), resultSet.getString(i));
////                arrayList.add(m);
////            }
//
//            Map m = new HashMap<String, String>();
////                m.put(resultSet.getMetaData().getColumnName(i), resultSet.getString(i));
////                arrayList.add(m);
//        }
//
//        System.out.println(arrayList.size());
//        System.out.println(arrayList);
//        return arrayList;
//    }
}
