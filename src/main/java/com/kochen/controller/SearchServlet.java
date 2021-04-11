package com.kochen.controller;

import com.google.gson.Gson;
import com.kochen.hibernate.Recipe;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@RestController
public class SearchServlet extends HttpServlet {

    @RequestMapping(value = "/searchServlet", method = RequestMethod.GET)
    public void checkRecipeAmount(HttpServletRequest request, HttpServletResponse response) throws IOException {

        int time = Integer.parseInt(request.getParameter("cookingTime"));
        int category = Integer.parseInt(request.getParameter("type"));
        String input = request.getParameter("input");

        //Should be instantiated once
        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
        SessionFactory sessionFactory = cfg.buildSessionFactory();

        //Unit of work
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        //Execute hql
        int recipeAmount = 0;

        if (category == 0) {
            System.out.println("Category zero");
            String hql = "from Recipe r where r.recipe_name like :input and r.cooking_time<= :time";
            List result = session.createQuery(hql).setParameter("input", "%" + input + "%").setParameter("time", time).list();
            recipeAmount = result.size();

        } else {
            System.out.println("Category not zero");
            String hql = "from Recipe r where r.recipe_name like :input and r.category = :category and r.cooking_time<= :time";
            ArrayList<Recipe> result = (ArrayList<Recipe>) session.createQuery(hql).setParameter("input", "%" + input + "%").setParameter("category", category).setParameter("time", time).list();
            recipeAmount = result.size();
        }

        session.getTransaction().commit();
        session.close();

        List<Integer> list = new ArrayList<>();
        list.add(recipeAmount);
        String json = new Gson().toJson(list);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
    }
}
