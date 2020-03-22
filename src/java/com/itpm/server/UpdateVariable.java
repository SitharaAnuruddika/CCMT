/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.itpm.server;

import com.itpm.controller.SizeVariableMethodController;
import com.itpm.model.SizeVariableMetod;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(name = "UpdateVariable", urlPatterns = {"/UpdateVariable"})
public class UpdateVariable extends HttpServlet {
    
    SizeVariableMethodController svmc1 = new SizeVariableMethodController();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateVariable</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateVariable at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         ArrayList<SizeVariableMetod> lists = new ArrayList<SizeVariableMetod>();

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        for (int i = 1; i <= 4; i++) {
            SizeVariableMetod sizevariablemethod = new SizeVariableMetod();
            sizevariablemethod.setId("V" + i);
            sizevariablemethod.setWeight(Integer.parseInt(request.getParameter("V" + i)));
            lists.add(sizevariablemethod);

            out.println("V" + i + " = " + request.getParameter("V" + i));

        }
        for (SizeVariableMetod variablesss : lists) {
            out.println(variablesss.getId() + " " + variablesss.getWeight());
        }
        
        int result=svmc1.updateVariable(lists);
        System.out.println("res- "+request);
        if(result==1){
            response.sendRedirect("sizevariableweight.jsp");
        }
     
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
