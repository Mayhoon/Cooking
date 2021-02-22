package com.kochen.dao;

import com.kochen.hibernate.Example;
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
            Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
            SessionFactory sessionFactory = cfg.buildSessionFactory();
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();

            String searchbarInput = "aufil";
            String time = "15";
            String recipeType = "1";


            Query query = session.createQuery("select count(recipe) from Recipe recipe where cooking_time="+time+" and category="+recipeType+"and recipe_name like'%"+searchbarInput+"%'");
            long result = (long) query.list().get(0);
            System.out.println(result);

            session.getTransaction().commit();
            session.close();

        }

}
