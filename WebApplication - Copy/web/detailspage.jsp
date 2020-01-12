<%@page import="com.main.dto.ProductDTO" %>
<%@page import="com.main.service.ProductService" %>
<%@page import="java.awt.*" %>
<%@page import="java.util.*" %>
<%
    Object loginid = request.getSession().getAttribute("username");
    String user1 = "";
    if (loginid != null) {
        user1 = loginid.toString();
    } else {
        user1 = "0";
    }
    String string = (String) request.getParameter("id");
    String cate = (String) request.getParameter("cate");
    ProductDTO dTO = ProductService.searchOrListProduct(string, "byid").get(0);
    ProductService.savereview(string, user1);
%>

<br/>
<div style="width: 940px;height: auto;min-height: 300px;;border:solid 1px rgb(220,220,210);">
    <div style="width: 940px;height: 30px;;border-bottom:  solid 1px rgb(220,220,220);background: rgb(240,240,240)">
        <h3 style="padding: 5px;">
            PRODUCT DETAILS PAGE
        </h3>
    </div>
    <div>
        <div style="width: 120px;height: 220px;float: left;border: solid 0px rgb(200,200,200);margin: 15px;">
            <%
                String image = "images/" + cate + "/" + dTO.getTxtImage() + ".jpg";
            %>
            <img src="<%=image%>" style="width: 120px;height: 150px;">
            <br/>
            <br/>
            <center>
                <%
                %>

                <%
                    if (request.getSession().getAttribute("username") == null) {
                %>
                <a href="index.jsp?page=login">
                    <%
                    } else {
                    %>
                    <a href="index.jsp?page=byesucess">
                        <%
                            }
                        %>
                        <input type="button" name="btnBuyNow" id="btnBuyNow" value="Bye Now" style="width: 100px;height: 30px;background: orange ">
                    </a>
            </center>
        </div>
        <br/>
        <b style="line-height: 25px;"><%=dTO.getPName().toUpperCase()%></b>&nbsp;->
        <b><%=dTO.getPCategory()%></b>&nbsp;->
        <b style="color: red">RS. <%=dTO.getPPrice()%></b>
        <p style="font-family: verdana;font-size: 11px;line-height: 20px;margin-top: 20px;margin-left: 10px; ;text-align: justify;margin-right: 20px;">
            <%=dTO.getDescription()%>
        </p>
        <br/>
    </div>
    <br/>
    <br/>
</div>