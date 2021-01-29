package com.kochen.controller;

import com.kochen.dao.RecipeDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
}
