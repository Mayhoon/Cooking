package com.kochen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.sql.SQLException;

@Controller
public class SearchController {

    @ResponseBody
    @RequestMapping("/search")
    public ModelAndView addone() throws SQLException, ClassNotFoundException {
//        ArrayList response = RecipeDAO.getAllRecipes();

        String response = "IrgendeinString";

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/search.jsp");
        modelAndView.setViewName("/search.jsp");
        modelAndView.addObject("response", response);
        return (modelAndView);
    }

    @ResponseBody
    @RequestMapping("/two")
    public String two() {
        return ("OneTwo");
    }

//    @ResponseBody
//    @RequestMapping("/search")
//    public String einsirgendwass() {
////        ModelAndView modelAndView = new ModelAndView();
////        modelAndView.setViewName("/search.jsp");
//        return ("search");
//    }

    @RequestMapping
    public ModelAndView werteUebergabe(@RequestParam("wert1") int a, @RequestParam("wert2") int b) {

        //do someothing
        return new ModelAndView("search");
    }
}
