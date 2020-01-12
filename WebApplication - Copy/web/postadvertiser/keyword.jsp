<%@page import="com.main.dto.ProductDTO"%>
<%@page import="com.main.dto.ProductDTO" %>
<%@page import="com.main.service.ProductService" %>
<%@page import="java.awt.*" %>
<%@page import="java.util.*" %>
<%
    String param = (String) request.getSession().getAttribute("txtUserId");
    ArrayList<ProductDTO> arrayList;
    arrayList = ProductService.searchOrListProduct(param, "postAdd");
%>
<div style="width: 760px;height: 30px;border: solid 1px rgb(220,220,220);background: rgb(240,240,240)">
    <h3 style="padding: 5px;">
        VIEW KEYWORDS
    </h3>
</div>
<br/>

<table border="1" style="border-collapse: collapse;width: 760px;">
    <tr id="th">
        <th style="width: 25px;"></th>
        <th style="width: 120px;">CATEGORY</th>
        <th style="width: 240px;">PRODUCT NAME</th>
        <th>KEYWORDS</th>
    </tr>
</table>
<div style="border-collapse: collapse;width: 100%;height: 350px;overflow: auto;margin-top: -1px;">
    <table border="1" style="border-collapse: collapse;width: 760px;">    <%
        int sr = 1;
        for (ProductDTO dTO : arrayList) {
        %>
        <tr id="tr" style="font-size: 10px;">
            <td style="width: 25px;" align="center"><%=sr%></td>
            <td style="width: 120px;" >&nbsp;&nbsp;<%=dTO.getPCategory()%></td>
            <td style="width: 240px;" >&nbsp;&nbsp;<%=dTO.getPName()%></td>
            <td >&nbsp;&nbsp;<%=dTO.getKeywords().toUpperCase()%></td>
        </tr>
        <%
                sr++;
            }
        %>
    </table>
</div>
<table border="1" style="border-collapse: collapse;width: 760px;margin-top: -1px;">
    <tr id="th">
        <th style="width: 25px;"></th>
        <th  style="width: 120px;"></th>
        <th  ></th>
    </tr>
</table>
<br/>
<br/>
<br/>