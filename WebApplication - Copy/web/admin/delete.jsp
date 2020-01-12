<%@page import="com.main.service.MsAccessConnection" %>
<%@page import="java.awt.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%
    String id = request.getParameter("id");
    String from = request.getParameter("status");
    String query = "";
    String redirect = "";

    if (from.equals("category")) {
        query = "DELETE FROM tbl_category WHERE id = " + id;
        redirect = "home.jsp?page=view_cat";
    }
    if (from.equals("product")) {
        query = "DELETE FROM tbl_product WHERE id = " + id;
        redirect = "home.jsp?page=view_pro";
    }
    if (from.equals("user")) {
        query = "DELETE FROM tbl_login WHERE id = " + id;
        redirect = "home.jsp?page=view_user";
    }

    try {
        Object txtHiddent = request.getParameter("txtHiddent");
        if (txtHiddent.toString().equals("delete")) {
            MsAccessConnection.preStateMent(query).execute();
            response.sendRedirect(redirect);
        }
    } catch (Exception e) {
    }
%>
<br/>
<center>
    <h4>
        ARE YOU WANT TO DELETE THIS RECORD ?
    </h4>
    <br/>
    <form name="frmDelete" id="frmDelete" method="POST">
        <input type="hidden" name="txtHiddent" value="delete">
        <table>
            <tr>
                <td><input type="submit" name="btnSubmit" id="btnSubmit" value="YES" class="button"></td>
                <td>
                    <a href="<%=redirect %>">
                        <input type="button" name="btnSubmit" id="btnSubmit" value="NO"  class="button">
                    </a>
                </td>
            </tr>
        </table>
    </form>
</center>