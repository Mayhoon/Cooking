package com.kochen.servlet;

import com.kochen.dao.RecipeDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet("/demo")
public class DemoServlet extends HttpServlet {

    public DemoServlet() {

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        try {
            request.setAttribute("recipeList", RecipeDAO.getAllRecipes());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

//        PrintWriter out = response.getWriter();
//        out.println("doGet in demo");

//        ArrayList names = new ArrayList();
//        names.add("Elfriede");
//        names.add("Gunnert");
//        names.add("Wallachmed");

//        request.setAttribute("studentNames", names);

        String label = "JSTL Label";
        request.setAttribute("label", label);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        requestDispatcher.forward(request, response);
    }

}
