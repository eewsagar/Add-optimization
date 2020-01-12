package com.main.servlet;

import com.main.service.MsAccessConnection;
import com.main.service.Sendemail;
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
@WebServlet(name = "RegistrationServlet", urlPatterns = {"/RegistrationServlet"})
public class RegistrationServlet extends HttpServlet {

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
            String param = "";
            if (request.getParameter("hidden") != null) {
                param = request.getParameter("hidden");
            } else {
                param = "0";
            }

            String fullName = request.getParameter("txtFullName");
            String contatNo = request.getParameter("txtContactNo");
            String emailId = request.getParameter("txtEMail");
            String userName = request.getParameter("txtUserName");
            String password = request.getParameter("txtPassword");
            String hidden = request.getParameter("hidden");

            String string = "INSERT INTO `tbl_registration` ("
                    + " `edit`, "
                    + "`delete`, "
                    + "`add`, "
                    + "`txtFullName`, "
                    + "`txtContactNo`, "
                    + "`txtEMail`, "
                    + "`txtUserName`, "
                    + "`txtPassword`, "
                    + "`txtType`, "
                    + "`isActive`) VALUES ("
                    + " '0', "
                    + "'0', "
                    + "'0', "
                    + "'" + fullName + "', "
                    + "'" + contatNo + "', "
                    + "'" + emailId + "', "
                    + "'" + userName + "', "
                    + "'" + password + "', "
                    + "'" + hidden + "', "
                    + "'Y');";
            Integer chkUserName = MsAccessConnection.chkUserName(userName);
            out.print(string);
            request.getSession().setAttribute("userName", userName);
            try {
                if (chkUserName == 1) {
                    response.sendRedirect("index.jsp?page=failuer");
                } else {
                    MsAccessConnection.preStateMent(string).execute();
                    response.sendRedirect("index.jsp?page=sucess");
                }
                Sendemail.sucessRegistration(emailId, ""
                        + "YOUR LOGIN DETAILS : -                                                    "
                        + "                            USERNAME :-  \n"
                        + "" + userName + "\n"
                        + "                           PASSWORD  :- \n"
                        + "" + password + "\n"
                        + ""
                        + "\n                        click or copy past this link to browser for login :- "
                        + "\n\nhttp://localhost:8084/WebApplication1/postadvertiser/"
                        + "");
            } catch (Exception e) {
                response.sendRedirect("index.jsp");
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
