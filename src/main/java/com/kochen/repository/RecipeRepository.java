package com.kochen.repository;

import com.kochen.model.Recipe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@Repository
public class RecipeRepository {

    @Autowired
    @Qualifier("connection")
    private Connection connection;

    public void createRecipe(Recipe recipe) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("insert into cooking.recipe (id, recipe_name, url, description, difficulty, image_url, cooking_time) values(default, ?, ?, ?, ?, ?, ?, ?)");
        statement.setString(1, recipe.getName());
        statement.setString(2, recipe.getUrl());
        statement.setInt(3, recipe.getCategory());
        statement.setString(4, recipe.getDescription());
        statement.setInt(5, recipe.getDifficulty());
        statement.setString(6, recipe.getImageUrl());
        statement.setInt(7, recipe.getCookingTime());

        statement.execute();
    }

    public void updateRecipe(Recipe oldRecipe, Recipe newRecipe) throws SQLException {
        findRecipe();
        newRecipe.setName(oldRecipe.getName());
        deleteRecipe(oldRecipe);
        createRecipe(newRecipe);
    }

    public void findRecipe (Recipe recipe) throws SQLException {
        PreparedStatement statement = connection.prepareStatement("select * from cooking.recipe where recipe_name =?");
        statement.setString(1, recipe.getName());
        ResultSet resultSet = statement.executeQuery();

        recipe.setName(resultSet.getString(2));
        recipe.setUrl(resultSet.getString(3));
        recipe.setCategory(resultSet.getInt(4));
        recipe.setDescription(resultSet.getString(5));
        recipe.setDifficulty(resultSet.getInt(6));
        recipe.setImageUrl(resultSet.getString(7));
        recipe.setCookingTime(resultSet.getInt(8));


    }

}
