package com.kochen.controller;

import com.kochen.hibernate.Recipe;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class GaleryController {

    @ResponseBody
    @RequestMapping(value = "/galery")
    public ModelAndView displaySearchResults(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException {
        String userInput = request.getParameter("userInput");
        int category = Integer.parseInt(request.getParameter("recipeTypeSelection"));
        int time = Integer.parseInt(request.getParameter("time"));

        //Should be instantiated once
        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
        SessionFactory sessionFactory = cfg.buildSessionFactory();

        //Unit of work
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        ArrayList <Recipe> recipeList = null;

        if (category == 0) {
            System.out.println("Category zero");
            String hql = "from Recipe r where r.recipe_name like :input and r.cooking_time<= :time";
            recipeList = (ArrayList) session.createQuery(hql).setParameter("input", "%" + userInput + "%").setParameter("time", time).list();
            System.out.println(recipeList.size());

        } else {
            System.out.println("Category not zero");
            String hql = "from Recipe r where r.recipe_name like :input and r.category = :category and r.cooking_time<= :time";
            List result = session.createQuery(hql).setParameter("input", "%" + userInput + "%").setParameter("category", category).setParameter("time", time).list();
            System.out.println(result.size());
            recipeList = (ArrayList) result;
            System.out.println(recipeList.size());
        }

//        for(int i = 0; i < recipeList.size(); i++) {
//            System.out.println("Eintry: " + recipeList.get(i).getDescription());
//        }

        session.getTransaction().commit();
        session.close();


//        ArrayList recipeList = RecipeDAO.getAllRecipes();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/galery.jsp");
        modelAndView.addObject("response", recipeList);
        return (modelAndView);
    }

}
