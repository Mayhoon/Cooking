package com.kochen.dao;

import com.kochen.hibernate.Example;
import com.kochen.hibernate.Recipe;
import com.kochen.jbdc.Connector;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public abstract class RecipeDAO {

    public static ArrayList getAllRecipes() throws ClassNotFoundException, SQLException {
        Statement statement = Connector.connect();

        ArrayList<Map> arrayList = new ArrayList();
        String query = "SELECT * FROM recipe FULL JOIN difficulty ON difficulty = difficulty.id";
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
        public static void main (String[]args){
//            Example example = new Example();
//            example.setId(33);
//            example.setNames("Hubert");
//
            Recipe recipe = new Recipe();
            recipe.setRecipe_name("Lecker schmecker Rezept");
            recipe.setDifficulty(1);
            recipe.setDescription("Test Rezept hibernate");
            recipe.setCooking_time(20);
            recipe.setImage_url("www.google.com");
            recipe.setUrl("www.google.com");
            recipe.setCategory(1);

            Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
            SessionFactory sessionFactory = cfg.buildSessionFactory();
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();

//        recipe = session.get(Recipe.class, 1);

//            session

            session.save(recipe);


            transaction.commit();
            System.out.println(recipe.toString());

        }

}
