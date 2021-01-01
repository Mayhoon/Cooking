package com.kochen.controller;

import com.kochen.dao.RecipeDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.sql.SQLException;
import java.util.ArrayList;

@Controller
public class SearchController {

    @ResponseBody
    @RequestMapping("/getRecipes")
    public ModelAndView addone() throws SQLException, ClassNotFoundException {
        ArrayList response = RecipeDAO.getAllRecipes();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/search.jsp");
        modelAndView.addObject("response", response);
        return (modelAndView);
    }

    @ResponseBody
    @RequestMapping("/two")
    public String two() {
        return ("OneTwo");
    }

    @ResponseBody
    @RequestMapping("/search")
    public String einsirgendwass() {
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.setViewName("/search.jsp");
        return ("search");
    }
}
