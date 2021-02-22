package com.kochen.controller;

import com.google.gson.Gson;
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
public class GenericController extends HttpServlet {

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
