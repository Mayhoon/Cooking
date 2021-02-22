package com.kochen.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RestController
public class SearchServlet extends HttpServlet {

    @RequestMapping(value = "/weRobot", method = RequestMethod.GET)
    public void checkRecipeAmount(HttpServletRequest request, HttpServletResponse response) throws IOException {

        System.out.println("Hello");

        String searchbarInput = request.getAttribute("searchbar").toString();
        String time = request.getAttribute("time").toString();
        String recipeType = request.getAttribute("recipeType").toString();

        System.out.println(searchbarInput);
        System.out.println(time);
        System.out.println(recipeType);
//
//        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");
//        SessionFactory sessionFactory = cfg.buildSessionFactory();
//        Session session = sessionFactory.openSession();
//        Transaction transaction = session.beginTransaction();
//
//        Query query = session.createQuery("select count(recipe) from Recipe recipe where cooking_time=" + time + " and category=" + recipeType + "and recipe_name like'%" + searchbarInput + "%'");
//        int result = (int) query.list().get(0);
//        session.getTransaction().commit();
//        session.close();
//
//        List<Integer> list = new ArrayList<Integer>();
//        list.add(result);
//        String json = new Gson().toJson(list);
//        response.setContentType("application/json");
//        response.setCharacterEncoding("UTF-8");
//        response.getWriter().write(json);
    }

//    @RequestMapping(value = "/weRobot", method = RequestMethod.GET)
//    public void checkOrder(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        List<String> list = new ArrayList<>();
//        list.add("item1");
//        list.add("item2");
//        list.add("item3");
//
//        System.out.println(request.getParameter("list"));
//        System.out.println(request.getAttribute("list"));
//
//        String json = new Gson().toJson(list);
//        response.setContentType("application/json");
//        response.setCharacterEncoding("UTF-8");
//        response.getWriter().write(json);
//    }
}
