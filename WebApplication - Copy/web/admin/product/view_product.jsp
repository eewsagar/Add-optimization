<%@page import="com.main.dto.ProductDTO" %>
<%@page import="com.main.service.ProductService" %>
<%@page import="java.awt.*" %>
<%@page import="java.util.*" %>
<%
    String param = (String) request.getSession().getAttribute("txtType");
    ArrayList<ProductDTO> arrayList;
    arrayList = ProductService.searchOrListProduct("", "all");
%>
<h3>
    VIEW ADDED PRODUCT
</h3>
<br/>
<a href="home.jsp?page=add_pro" class="a_blue">add product</a>
<br/>
<br/>
<table border="1" style="border-collapse: collapse;width: 760px;">
    <tr id="th">
        <th style="width: 25px;"></th>
        <th  style="width: 25px;"></th>
        <th  style="width: 25px;"></th>
        <th>NAME</th>
        <th style="width: 100px;">CATEGORY</th>
        <th style="width: 100px;">DATE</th>
        <th style="width: 220px;">KEY WORD</th>
    </tr>
</table>
<div style="border-collapse: collapse;width: 100%;height: 350px;overflow: auto;margin-top: -1px;">
    <table border="1" style="border-collapse: collapse;width: 760px;">
        <%
            int sr = 1;
            for (ProductDTO dTO : arrayList) {
                String[] strings = dTO.getEntryDate().split(" ");
                String date = "";
                if (strings.length > 3) {
                    date = strings[2] + "-" + strings[1] + "-" + strings[5];
                }
        %>
        <tr id="tr">
            <td style="width: 25px;font-size: 10px;" align="center"><%=sr%></td>
            <td style="width: 25px;"  align="center"><a href="home.jsp?page=delete&id=<%=dTO.getID()%>&status=product"><img src="icon/cancel.png"  style="width: 10px;height: 10px;"></a></td>
            <td style="width: 25px;"  align="center"><a href="home.jsp?page=edit_product&id=<%=dTO.getID()%>"><img src="icon/pencil.png"  style="width: 10px;height: 10px;"></a></td>
            <td style="font-size: 11px;">&nbsp;&nbsp;<%=dTO.getPName().toUpperCase()%></td>
            <td style="width: 100px;font-size: 11px;">&nbsp;&nbsp;<%=dTO.getPCategory().toUpperCase()%></td>
            <td style="width: 100px;font-size: 11px;">&nbsp;&nbsp;<%=date%></td>
            <td style="width: 220px;font-size: 10px;">&nbsp;&nbsp;<%=dTO.getKeywords()%></td>
        </tr>    <% sr++;
            }%>
    </table>
</div>
<table border="1" style="border-collapse: collapse;width: 760px;margin-top: -1px;">
    <tr id="th">
        <th style="width: 25px;"></th>
        <th  style="width: 25px;"></th>
        <th  style="width: 25px;"></th>
        <th></th>
        <th style="width: 100px;"></th>
        <th style="width: 100px;"></th>
        <th style="width: 220px;"></th>
    </tr>
</table>
<br/>
<br/>
<br/>