<%    String string = (String) request.getSession().getAttribute("aUsername");
    String includepage = "";
    Object object = request.getParameter("page");
    if (object == null) {
        includepage = "default";
    } else {
        includepage = (String) object;
    }
%>
<style>
    input{
    }
</style>
<link href="css/style.css" rel="stylesheet">
<title>FREE ADD POST SITE</title>
<div id="wrapper">
    <div id="header">
        <img src="../images/logo1.jpg" style="width: 400px;height: 80px;margin: 5px;">
    </div>

    <div id="banner">
        <img src="../images/banner1.png" style="width: 958px;height: 200px;border: solid 1px gray;">
    </div>

    <div id="">
        <div id="leftmenu">
            <%@include file="menus.jsp" %> 
        </div>
        <div id="conrite">
            <%  if (includepage.equals("default")) { %>  <%@include file="default.jsp" %> <% }%>
            <%  if (includepage.equals("add_cat")) { %>  <%@include file="category/add_category.jsp" %> <% }%>
            <%  if (includepage.equals("view_cat")) { %>  <%@include file="category/view_category.jsp" %> <% }%>
            <%  if (includepage.equals("add_pro")) { %>  <%@include file="product/add_product.jsp" %> <% }%>
            <%  if (includepage.equals("edit_product")) { %>  <%@include file="product/edit_product.jsp" %> <% }%>
            <%  if (includepage.equals("view_pro")) { %>  <%@include file="product/view_product.jsp" %> <% }%>
            <%  if (includepage.equals("add_user")) { %>  <%@include file="users/add_users.jsp" %> <% }%>
            <%  if (includepage.equals("view_user")) { %>  <%@include file="users/view_users.jsp" %> <% }%>
            <%  if (includepage.equals("keyword")) { %>  <%@include file="keyword.jsp" %> <% }%>
            <%  if (includepage.equals("optimization")) { %>  <%@include file="optimization.jsp" %> <% }
            %>
            <%  if (includepage.equals("delete")) { %>  <%@include file="delete.jsp" %> <% }%>
        </div>
    </div>
    <div id="footer"></div>
</div>