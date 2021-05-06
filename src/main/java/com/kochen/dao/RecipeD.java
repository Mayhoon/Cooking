package com.kochen.dao;

import com.kochen.jbdc.Connector;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public abstract class RecipeD {

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
}
