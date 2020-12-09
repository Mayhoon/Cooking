package com.kochen.servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/squareroot")
public class SquarerootServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int receiptNumber = Integer.parseInt(request.getParameter("receipt_number"));
        int budget = Integer.parseInt(request.getParameter("budget"));

        int added = receiptNumber * budget;

        PrintWriter out = response.getWriter();
        out.println("Squareroot via post method:" + added);


        HttpSession session = request.getSession();
        out.println("Addition received from the http session:" + session.getAttribute("addition"));

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        out.println("ekfvbik");
        int receiptNumber = Integer.parseInt(request.getParameter("receipt_number"));
        out.println(receiptNumber);
        out.println("124");
        int budget = Integer.parseInt(request.getParameter("budget"));
        out.println("3214");
//        int added = receiptNumber * budget;
//        out.println("Squareroot via get method:" + added);


        HttpSession session = request.getSession();
        out.println("Addition received from the http session:" + (int) session.getAttribute("addition"));

    }
}
