<%
    Object username = request.getSession().getAttribute("username");
    out.print(username);
%>
<br/>
<style>
    #table{
        width: 100%;background-color: #3A3A3A;color: white;
        border-collapse: collapse;
    }
    #table td {
        text-align: center;
    }
    #table td a{
        font-size: 11px;font-family: verdana;
        text-align: center;
    }
</style>
<table id="table" border="1">
    <tr>
        <td width="123px;"><a href="index.jsp" >HOME</a></td>
        
        <%
            if (username == null) {
        %>
        <td width="123px;"><a href="index.jsp?page=regi&mode=3">REGISTRATION</a></td>
        <% } %>
        <td width="123px;"><a href="index.jsp?page=book">BOOKS</a></td>
        <td width="123px;"><a href="index.jsp?page=cloths">CLOTHING </a></td>
        <td width="123px;"><a href="index.jsp?page=electronics">ELECTRONICS</a></td>
        <td width="123px;"><a href="index.jsp?page=bedroom">KITCHEN</a></td>
        <td width="123px;"><a href="index.jsp?page=toyes">TOYS & GAMES</a></td>
        <td width="123px;">
            <%
                if (username == null) {
            %>
            <a href="index.jsp?page=login">LOGIN</a>
            <%
            } else {
            %>
            <a href="logout.jsp">LOG OUT</a>
            <%
                }
            %>
        </td>
    </tr>
</table>