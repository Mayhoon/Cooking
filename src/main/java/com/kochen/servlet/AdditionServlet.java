package com.kochen.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

//Works the same as the xml configuration
@WebServlet("/addition")
public class AdditionServlet extends HttpServlet {
    public AdditionServlet() {

    }

    //has to be named service, doPost or doGet
    //doGet and doPost ensures that the form method has to bo post/ get
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int receiptNumber = Integer.parseInt(request.getParameter("receipt_number"));
        int budget = Integer.parseInt(request.getParameter("budget"));

        int added = receiptNumber + budget;

        //Add the calculated value to the request so that the next servlet can access it

        HttpSession httpSession = request.getSession();
        httpSession.setAttribute("addition", added);

        callSquareRootServlet(request, response);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int receiptNumber = Integer.parseInt(request.getParameter("receipt_number"));
        int budget = Integer.parseInt(request.getParameter("budget"));

        int added = receiptNumber + budget;

        //Add the calculated value to the request so that the next servlet can access it
        HttpSession httpSession = request.getSession();
        httpSession.setAttribute("addition", added);

        callSquareRootServlet(request, response);
    }

    //    Weiterleiten des requests und der response an ein weiteres servlet
    private void callSquareRootServlet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.sendRedirect("squareroot");

//        RequestDispatcher requestDispatcher = request.getRequestDispatcher("squareroot");
//        requestDispatcher.forward(request, response);
    }


}
