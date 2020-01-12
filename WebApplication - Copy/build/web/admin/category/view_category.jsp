<%@page import="com.main.dto.CategoryDTO" %>
<%@page import="com.main.service.CategoryService" %>
<%@page import="java.awt.*" %>
<%@page import="java.util.*" %>
<%
    ArrayList<CategoryDTO> arrayList = CategoryService.searchOrListCategory("", "all");
%>
<h3>
    VIEW ADDED CATEGORY
</h3>
<br/>
<a href="home.jsp?page=add_cat" class="a_blue">add category</a>
<br/>
<br/>
<table border="1" style="border-collapse: collapse;width: 100%;">
    <tr id="th">
        <th style="width: 25px;"></th>
        <th  style="width: 25px;"></th>
        <th>NAME</th>
        <th>DATE</th>
        <th>DESCRIPTION</th>
    </tr>
    <%
        int sr = 1;
        for (CategoryDTO dTO : arrayList) {
    %>
    <tr id="tr">
        <td style="width: 25px;" align="center"><%=sr%></td>
        <td style="width: 25px;"  align="center"><a href="home.jsp?page=delete&id=<%=dTO.getID()%>&status=category"><img src="icon/cancel.png"  style="width: 10px;height: 10px;"></a></td>
        <td  style="width: 160px;">&nbsp;&nbsp;<%=dTO.getCategoryName().toUpperCase()%></td>
        <td style="width: 180px;font-size: 12px;">&nbsp;&nbsp;<%=dTO.getEntryDate()%></td>
        <td >&nbsp;&nbsp;<%=dTO.getCategoryDescription().toUpperCase()%></td>
    </tr>
    <%
            sr++;
        }
    %>
</table>