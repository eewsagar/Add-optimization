<%@page import="com.main.dto.ProductDTO" %>
<%@page import="com.main.service.ProductService" %>
<%@page import="java.awt.*" %>
<%@page import="java.util.*" %>
<%
    String searchworkds = "";
    if (request.getParameter("searchinput") == null) {
    } else {
        searchworkds = (String) request.getParameter("searchinput");
    }

%>

<%    String category = (String) request.getParameter("page");
    ArrayList<ProductDTO> productList = null;
    String label = "";
    String cate = "";
    String cate1 = "";
    if (category.equals("book")) {
        label = "BOOK";
        cate = "images/mybook";
        cate1 = "mybook";
        if (searchworkds.trim().length() != 0) {
            String condiAnd = "pCategory = 'BOOK' AND  keywords LIKE '%" + searchworkds + "%'  ";
            productList = ProductService.searchOrListProduct(condiAnd, "byand");
            ProductService.saveinterst(searchworkds);
        } else {
            productList = ProductService.searchOrListProduct("BOOK", "bycat");
        }
    }
    if (category.equals("cloths")) {
        if (searchworkds.trim().length() != 0) {
            String condiAnd = "pCategory = 'CLOTHING' AND keywords  LIKE '%" + searchworkds + "%'  ";
            productList = ProductService.searchOrListProduct(condiAnd, "byand");
            ProductService.saveinterst(searchworkds);
        } else {
            productList = ProductService.searchOrListProduct("CLOTHING", "bycat");
        }
        cate = "images/clothing/";
        cate1 = "clothing";
        label = "CLOTHING";
    }
    if (category.equals("electronics")) {
        if (searchworkds.trim().length() != 0) {
            String condiAnd = "pCategory = 'ELECTRONICS' AND  keywords LIKE '%" + searchworkds + "%'  ";
            productList = ProductService.searchOrListProduct(condiAnd, "byand");
            ProductService.saveinterst(searchworkds);
        } else {
            productList = ProductService.searchOrListProduct("ELECTRONICS", "bycat");
        }
        label = "ELECTRONICS";
        cate = "images/electronics/";
        cate1 = "electronics";
    }
    if (category.equals("bedroom")) {
        if (searchworkds.trim().length() != 0) {
            String condiAnd = "pCategory = 'KITCHEN' AND keywords  LIKE '%" + searchworkds.trim() + "%'  ";
            productList = ProductService.searchOrListProduct(condiAnd, "byand");
            ProductService.saveinterst(searchworkds);
        } else {
            productList = ProductService.searchOrListProduct("KITCHEN", "bycat");
        }
        label = "KITCHEN";
        cate = "images/kitchen/";
        cate1 = "kitchen";
    }
    if (category.equals("toyes")) {
        if (searchworkds.trim().length() != 0) {
            String condiAnd = "pCategory = 'TOYS & GAMES' AND keywords  LIKE '%" + searchworkds + "%'  ";
            productList = ProductService.searchOrListProduct(condiAnd, "byand");
            ProductService.saveinterst(searchworkds);
        } else {
            productList = ProductService.searchOrListProduct("TOYS & GAMES", "bycat");
        }
        label = "TOYS & GAMES";
        cate = "images/toysgames/";
        cate1 = "toysgames";
    }
%>
<form name="frmSearch" id="frmSearch" method="post">
    <div style="width: 940px;height: 24px;border-bottom:  solid 1px rgb(220,220,220);">
        <input type="text" name="searchinput" id="searchinput" class="searchinput" value="<%=searchworkds%>" placeholder="enter proper keywords">
        <input type="submit" name="searchbutton"  value="Search" id="searchbutton"  class="searchbutton">
    </div>
    <br/>
    <div style="width: 940px;height: auto;border: solid 0px rgb(220,220,220);">
        <div style="width: 940px;height: 35px;;border:  solid 1px rgb(220,220,220);background: rgb(240,240,240)">
            <h3 style="padding: 10px;">
                <%=label%>
            </h3>
        </div>
        <div id="product-row" style="height: auto;">
            <%  int sr = 1;
                for (ProductDTO dTO : productList) {%>
            <div style="width: 120px;height: 150px;border: solid 0px gray;float: left;margin-right: 33px;margin-bottom: 20px;">
                <table style="width: 100%;height: 100%">
                    <tr>
                        <td colspan="2"> 
                            <img src="<%=cate%>/<%=dTO.getTxtImage()%>.jpg" style="width: 118px;height: 120px;">
                        </td>
                    </tr>
                    <tr  align='center'>
                        <td style="color: red;font-size: 11px;font-weight: bold">
                            RS.&nbsp;<%=dTO.getPPrice()%>
                            &nbsp;&nbsp;
                            <a href="index.jsp?page=details&id=<%=dTO.getID()%>&cate=<%=cate1%>" style="color: blue;font-size: 10px;">view&nbsp;more</a>
                        </td>
                    </tr>

                </table>
            </div>
            <% sr++;
                }%>
        </div>
        <%
            if (productList.size() == 0) {
                out.print("<span style='color:red' > sorry no record found for this tag / keyword...</span>");
            }
        %>
    </div>
</form>
<style>
    .searchinput{
        border-radius: 0px;
        width: 820px;
        float: left;
        border: solid 1px gray;
    }
    .searchbutton{
        float: left;
        border-radius: 0px;
        border: solid 1px gray;
        background-color: orange  ;
        color: white;
        width: 120px;
        margin-left: -1px;
    }
</style>
