package com.kochen.service;

import com.kochen.model.Recipe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecipeService {

    private RecipeRepository recipeRepository;

    public RecipeService(@Autowired RecipeRepository recipeRepository) {
        this.recipeRepository = recipeRepository;
    }

    public void createRecipe(Recipe recipe) {
        try {
            recipeRepository.createRecipe();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void deleteRecipe(Recipe recipe) {
        try {
            recipeRepository.deleteRecipe(recipe);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void findRecipe(){

    }

}
