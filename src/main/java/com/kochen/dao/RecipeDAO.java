package com.kochen.dao;

import com.kochen.hibernate.Recipe;
import com.kochen.jbdc.Connector;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public abstract class RecipeDAO {

    public static ArrayList getAllRecipes() throws ClassNotFoundException, SQLException {
        Statement statement = Connector.connect();

        ArrayList<Map> arrayList = new ArrayList();
        String query = "SELECT * FROM recipe FULL JOIN difficulty ON difficulty = difficulty.id where recipe.recipe_name = 'Kartoffelauflauf'";
        ResultSet resultSet = statement.executeQuery(query);

        while (resultSet.next()) {
            int columnSize = resultSet.getMetaData().getColumnCount();

            //Get column data
            Map m = new HashMap<String, String>();
            for (int i = 1; i <= columnSize; i++) {
                m.put(resultSet.getMetaData().getColumnName(i), resultSet.getString(i));
            }
            arrayList.add(m);
        }
        resultSet.close();
        statement.close();

        return arrayList;
    }

    public static String getRecipeCount() throws SQLException, ClassNotFoundException {
        Statement statement = Connector.connect();
        String sql = "SELECT COUNT(*) as recipe_amount from recipe";
        ResultSet resultSet = statement.executeQuery(sql);
        resultSet.next();

        return resultSet.getString(1);

    }

//    public static void main(String[] args) {
//        String input = "Kar";
//        String category = "1";
//        int time = 15;
//
//        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
//        SessionFactory sessionFactory = cfg.buildSessionFactory();
//        Session session = sessionFactory.openSession();
//        Transaction transaction = session.beginTransaction();
//
//        String hql = "from Recipe r where r.recipe_name like :input and r.category = :category and r.cooking_time<= :time";
//
//        List result = session.createQuery(hql).setParameter("input", "%" + input + "%")
//                .setParameter("category", category)
//                .setParameter("time", time).list();
//
////            String hql = "from Recipe r where r.recipe_name like :input";
////            List result = session.createQuery(hql).setParameter("input", "%"+input+"%").list();
//
//        int s = result.size();
//        System.out.println(s);
//
//        transaction.commit();
//        session.close();
//
//
//    }

}
