package com.kochen.controller;

import com.kochen.dao.RecipeDAO;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/getMatchingResults")
public class SearchServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String count = "";
        try {
            count = RecipeDAO.getRecipeCount();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            count = "DB ERROR";
        }

        String recipeType = request.getParameter("time");
//        String time = request.getParameter("time");
        System.out.println(" " + recipeType);
        response.setContentType("text/plain");
        response.getWriter().write(count);
    }


    protected void doPost() {

    }
}
