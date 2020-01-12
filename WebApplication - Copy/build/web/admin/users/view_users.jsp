<%@page import="com.main.dto.UserDTO" %>
<%@page import="com.main.service.CategoryService" %>
<%@page import="java.awt.*" %>
<%@page import="java.util.*" %>
<%
    ArrayList<UserDTO> arrayList = CategoryService.getUserList("", "all");
%>
<h3>
    VIEW ADDED USERS
</h3>
<br/>
<a href="home.jsp?page=add_user" class="a_blue">add user</a>
<br/>
<br/>
<table border="1" style="border-collapse: collapse;width: 100%;">
    <tr id="th">
        <th style="width: 25px;"></th>
        <th  style="width: 25px;"></th>
        <th>FIRST NAME</th>
        <th>LAST NAME</th>
        <th>EMAIL</th>
        <th>USERNAME</th>
        <th>PASSWORD</th>
    </tr>
    <%
        int sr = 1;
        for (UserDTO dTO : arrayList) {
    %>
    <tr id="tr">
        <td style="width: 25px;" align="center"><%=sr%></td>
        <td style="width: 25px;"  align="center"><a href="home.jsp?page=delete&id=<%=dTO.getId()%>&status=user"><img src="icon/cancel.png"  style="width: 10px;height: 10px;"></a></td>
        <td  style="width: 160px;">&nbsp;&nbsp;<%=dTO.getFirstName().toUpperCase()%></td>
        <td  style="width: 160px;">&nbsp;&nbsp;<%=dTO.getLastName().toUpperCase()%></td>
        <td style="width: 180px;font-size: 12px;">&nbsp;&nbsp;<%=dTO.getEmaild() %></td>
        <td style="font-size: 11px;">&nbsp;&nbsp;<%=dTO.getUsername().toUpperCase()%></td>
        <td  style="font-size: 11px;">&nbsp;&nbsp;<%=dTO.getPassword().toUpperCase()%></td>
    </tr>
    <%
            sr++;
        }
    %>
</table>