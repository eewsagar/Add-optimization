<%@page import="com.main.dto.ProductDTO" %>
<%@page import="com.main.service.ProductService" %>
<%@page import="java.awt.*" %>
<%@page import="java.util.*" %>

<%
    ArrayList<ProductDTO> arrayList = ProductService.searchOrListReview("", "all");
    ArrayList<ProductDTO> arrayList1 = ProductService.getKyewordList();
%>

<div style="width: 760px;height: 35px;;border:  solid 1px rgb(220,220,220);background: rgb(240,240,240)">
    <h3 style="padding: 8px;text-align: center;color: green ">ADD OPTIMIZATION USING N-GRAM ALGORITHM</h3>
</div>
<br/>
<table border="1" style="border-collapse: collapse;width: 760px;">
    <tr id="th">
        <th style="width: 25px;"></th>
        <th width="50px;">P_ID</th>
        <th>PRODUCT NAME </th>
        <th style="width: 140px;">CATEGORY</th>
        <th  style="width: 80px;">N-GRAM</th>
    </tr>
</table>

<div style="border-collapse: collapse;width: 100%;max-height: 250px;overflow: auto;margin-top: -1px;">
    <table border="1" style="border-collapse: collapse;width: 760px;">
        <%
            int sr = 1;
            for (ProductDTO dTO : arrayList) {
                int i = ProductService.getCounter(dTO.getvProductId());
                try {

                    ProductDTO dsDto = ProductService.searchOrListProduct(dTO.getvProductId(), "search").get(0);
        %>
        <tr id="tr">
            <td style="width: 25px;font-size: 10px" align="center"><%=sr%></td>
            <td  width="50px;">&nbsp;&nbsp;<%=dTO.getvProductId()%></td>
            <td style="font-size: 12px;">&nbsp;&nbsp;<%=dsDto.getPName().toUpperCase()%></td>
            <td style="width: 140px;font-size: 12px;">&nbsp;&nbsp;<%=dsDto.getPCategory()%></td>
            <td  style="width: 80px;">&nbsp;&nbsp;<%=i%></td>
        </tr>    
        <%
                    sr++;
                } catch (Exception e) {
                }
            }%>
    </table>
</div>
<table border="1" style="border-collapse: collapse;width: 760px;margin-top: -1px;">
    <tr id="th">
        <th style="width: 25px;"></th>
        <th  width="50px;"></th>
        <th ></th>
        <th style="width: 80px;"></th>
    </tr>
</table>
<br/>
<div style="border-collapse: collapse;width: 100%;max-height: 250px;overflow: auto;margin-top: -1px;">
    <table border="1" style="border-collapse: collapse;width: 760px;">
        <%
            int sr1 = 1;
            
                for (ProductDTO dTO : arrayList1) {
        %>
        <tr id="tr">
            <td style="width: 25px;font-size: 10px" align="center"><%=sr1%></td>
            <td style="font-size: 12px;">&nbsp;&nbsp;<%=dTO.getKeywords()%></td>
            <td  style="width: 80px;">&nbsp;&nbsp;<%=dTO.getID()%></td>
        </tr>    
        <%
                    sr1++;
            }%>
    </table>
</div>
<table border="1" style="border-collapse: collapse;width: 760px;margin-top: -1px;">
    <tr id="th">
        <th style="width: 25px;"></th>
        <th  width="50px;"></th>
        <th ></th>
        <th style="width: 80px;"></th>
    </tr>
</table>
<br/>
<center>
    <form name="frmLogin" id="frmLogin"method="post" action="../OptimizeServlet">
        <input type="submit" value="OPTIMIZATION USING N-GRAM ALGORITHM" name="btnSubmit" id="btnSubmit" style="width: 360px;">
    </form>
</center>
<br/>
<br/>
<br/>