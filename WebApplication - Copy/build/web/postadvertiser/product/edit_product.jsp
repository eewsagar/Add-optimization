<%@page import="com.main.dto.ProductDTO"%>
<%@page import="com.main.service.ProductService"%>
<%@page import="com.main.dto.ProductDTO" %>
<%@page import="com.main.service.CategoryService" %>
<%@page import="java.awt.*" %>
<%@page import="java.util.*" %>
<%
    ProductDTO dTO = ProductService.searchOrListProduct(request.getParameter("id"), "search").get(0);
    String entryDate = new Date().toString();
%>
<style>
    .regitable{
        border-collapse: collapse;
        /*width: 90%;*/
        border-color: gray; 
        margin-left: 10px;
    }
    .regitable tr{
        height: 40px;
    }
    .regitable input,select{
        margin-left: 10px;
        border: solid 1px gray;
        border-radius: 0px;
        margin-bottom: 0px;
    }
    .regitable textArea{
        margin-left: 10px;
        border: solid 1px gray;
        border-radius: 0px;
        width: 400px;
    }
    #regilable{
        color: gray;
        padding-left:  10px;
    }
</style>
<div style="width: 580px;height: 30px;border: solid 1px rgb(220,220,220);background: rgb(240,240,240)">
    <h3 style="padding: 5px;">
        EDIT PRODUCT
    </h3>
</div>
<br/>
&nbsp;<a href="home.jsp?page=view_pro" class="a_blue">view product</a>
<br/>
<br/>
<form name="frmLogin" id="frmLogin" method="post" action="../UpdateProduct">
    <input type="hidden" name="txtHiddend" value="<%=request.getParameter("id")%>">
    <table border="0" class="regitable">
        <tr>
            <td id="lable">PRODUCT NAME :&nbsp;</td>
            <td id="lable"><input type="text" name="txtPName" value="<%=dTO.getPName()%>" ></td>
        </tr>
        <tr>
            <td id="lable">PRODUCT TYPE :&nbsp;</td>
            <td id="lable"><input type="text" name="txtPType"  value="<%=dTO.getPType()%>"></td>
        </tr>
        <tr>
            <td id="lable">PRODUCT PRICE :&nbsp;</td>
            <td id="lable"><input type="text" name="txtPPrice"  value="<%=dTO.getPPrice()%>"></td>
        </tr>
        <tr>
            <td id="lable">SEARCH KEYWORDS :&nbsp;</td>
            <td id="lable"><input type="text" name="txtKeywords"  value="<%=dTO.getKeywords()%>"></td>
        </tr>
        <tr>
            <td id="lable">UPDATE DATE :&nbsp;</td>
            <td id="lable"><input type="text" name="txtEntryDate" value="<%=entryDate%>"></td>
        </tr>
        <tr>
            <td id="label">DESCRIPTION :&nbsp;</td>
            <td><textarea name="txtDescription"> <%=dTO.getDescription()%></textarea></td>
        </tr>
        <tr>
            <td id="lable"></td>
            <td align="right">
                <input type="submit" class="button" name="btnSubmit" id="submit" value="Update">
                <input type="reset"  class="button"  name="btnReset" value="Reset" id="submit">
            </td>
        </tr>
    </table>
</form>
<br/>