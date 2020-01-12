

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
@WebServlet(name = "Registration", urlPatterns = {"/Registration"})
public class Registration extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String fullName = request.getParameter("txtFullName");
            String contatNo = request.getParameter("txtContactNo");
            String emailId = request.getParameter("txtEMail");
            String userName = request.getParameter("txtUserName");
            String password = request.getParameter("txtPassword");
            String string = "INSERT INTO `db_addoptimization`.`tbl_registration` ( "
                    + "`txtFullName`, "
                    + "`txtContactNo`, "
                    + "`txtEMail`, "
                    + "`txtUserName`, "
                    + "`txtPassword`, "
                    + "`isActive`"
                    + ") VALUES ("
                    + "'" + fullName + "', "
                    + "'" + contatNo + "', "
                    + "'" + emailId + "', "
                    + "'" + userName + "', "
                    + "'" + password + "', "
                    + "'T');";
            try {
//                MsAccessConnection.preStateMent(string).execute();
//                response.sendRedirect("index.jsp");
            } catch (Exception e) {
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
