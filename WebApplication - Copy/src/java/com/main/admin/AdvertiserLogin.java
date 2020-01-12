/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.admin;

import com.main.service.MsAccessConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yuvraj
 */
@WebServlet(name = "AdvertiserLogin", urlPatterns = {"/AdvertiserLogin"})
public class AdvertiserLogin extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            String userName = request.getParameter("txtUsername");
            String password = request.getParameter("txtPassword");
            String login = "SELECT * FROM `tbl_registration` WHERE txtUserName ='" + userName + "' AND txtPassword='" + password + "' AND txtType = '4' ";
            //out.print(login);
            int i = 0;
            try {
                ResultSet executeQuery = MsAccessConnection.preStateMent(login).executeQuery();
                System.out.println("login = " + login);
                while (executeQuery.next()) {
                    request.getSession().setAttribute("txtUserName", executeQuery.getString("txtUserName"));
                    request.getSession().setAttribute("txtType", executeQuery.getString("txtType"));
                        request.getSession().setAttribute("txtUserId", executeQuery.getString("id"));
                    i++;
                }
                executeQuery.close();
            } catch (Exception e) {
            }
            if (i == 0) {
                response.sendRedirect("postadvertiser/index.jsp");
            } else {
                response.sendRedirect("postadvertiser/home.jsp");
            }
        } finally {
            out.close();
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
        processRequest(request, response);
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
