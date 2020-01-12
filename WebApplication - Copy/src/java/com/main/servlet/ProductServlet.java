/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.servlet;

import com.main.dto.ProductDTO;
import com.main.service.ProductService;
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
@WebServlet(name = "ProductServlet", urlPatterns = {"/ProductServlet"})
public class ProductServlet extends HttpServlet {

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
            ProductDTO dTO = new ProductDTO();
            dTO.setPCategory(request.getParameter("txtPCategory"));
            dTO.setEntryDate(request.getParameter("txtEntryDate"));
            dTO.setPName(request.getParameter("txtPName"));
            dTO.setTxtImage(request.getParameter("txtImage"));
            dTO.setPType(request.getParameter("txtPType"));
            dTO.setPPrice(request.getParameter("txtPPrice"));
            dTO.setDescription(request.getParameter("txtDescription"));
            dTO.setKeywords(request.getParameter("txtKeywords"));
            String byuser = "";
            if (request.getSession().getAttribute("txtUserId") != null) {
                byuser = (String) request.getSession().getAttribute("txtUserId");
            } else {
                byuser = "";
            }
            dTO.setTxtByAdder(byuser);
            out.print("hello");
            Integer saveProduct = ProductService.saveProduct(dTO);
            out.print(saveProduct);
//            if (saveProduct != null) {
//                if (request.getSession().getAttribute("txtType").toString().equals("4")) {
//                    response.sendRedirect("postadvertiser/home.jsp?page=view_pro");
//                } else {
//                    response.sendRedirect("admin/home.jsp?page=view_pro");
//                }
//            } else {
//                if (request.getSession().getAttribute("txtType").toString().equals("4")) {
//                    response.sendRedirect("postadvertiser/home.jsp?page=view_pro");
//                } else {
//                    response.sendRedirect("admin/home.jsp?page=add_pro");
//                }
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
        //processRequest(request, response);
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
