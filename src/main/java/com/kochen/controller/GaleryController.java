package com.kochen.controller;

import com.kochen.dao.RecipeDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.sql.SQLException;
import java.util.ArrayList;

@Controller
public class GaleryController {

    @ResponseBody
    @RequestMapping("/galery")
    public ModelAndView displaySearchResults() throws SQLException, ClassNotFoundException {
        ArrayList response = RecipeDAO.getAllRecipes();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/galery.jsp");
        modelAndView.addObject("response", response);
        return (modelAndView);
    }

    @RequestMapping(value = "/searchGalery", method = RequestMethod.GET)
    public ModelAndView forwardToGallery(@RequestParam String searchbar , @RequestParam String time, @RequestParam String recipeType) throws SQLException, ClassNotFoundException {
        System.out.println(searchbar);
        System.out.println(time);
        System.out.println(recipeType);

        ArrayList response = RecipeDAO.getAllRecipes();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/galery.jsp");
        modelAndView.addObject("response", response);
        return modelAndView;
    }

//    public ModelAndView queryGalery() throws SQLException, ClassNotFoundException {
//        ArrayList response = RecipeDAO.getAllRecipes();
//
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.setViewName("/galery.jsp");
//        modelAndView.addObject("response", response);
//        return (modelAndView);
//    }

}
