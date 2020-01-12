/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.servlet;

import com.main.service.MsAccessConnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yuvraj
 */
@WebServlet(name = "UserServlet", urlPatterns = {"/UserServlet"})
public class UserServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.print("12313");
//            String fullName = request.getParameter("txtFullName");
//            String lastName = request.getParameter("txtLastName");
//            String emailId = request.getParameter("txtEMail");
//            String userName = request.getParameter("txtUserName");
//            String password = request.getParameter("txtPassword");
//     
//            String add = "0";
//            String edit = "0";
//            String delete = "0";
//
//            String string = "INSERT INTO `tbl_login` ( "
//                    + "`txtFirstName`, "
//                    + "`txtLastName`, "
//                    + "`txtEMail`, "
//                    + "`txtUserName`, "
//                    + "`txtPassword`, "
//                    + "`add`, "
//                    + "`edit`, "
//                    + "`delete`, "
//                    + "`txtType`, "
//                    + "`isActive`"
//                    + ") VALUES ("
//                    + "'" + fullName + "', "
//                    + "'" + lastName + "', "
//                    + "'" + emailId + "', "
//                    + "'" + userName + "', "
//                    + "'" + password + "', "
//                    + "'" + add + "', "
//                    + "'" + edit + "', "
//                    + "'" + delete + "', "
//                    + "'2', "
//                    + "'T');";
//            out.print(string);
//            try {
//                MsAccessConnection.preStateMent(string).execute();
//                response.sendRedirect("admin/home.jsp?page=view_user");
//            } catch (Exception e) {
//                response.sendRedirect("admin/home.jsp?page=view_user");
//            }
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
