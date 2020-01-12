<%

    String includepage = "";
    Object object = request.getParameter("page");
    if (object == null) {
        includepage = "default";
    } else {
        includepage = (String) object;
    }


%>
<link href="css/style.css" rel="stylesheet">
<link href="css/menu.css" rel="stylesheet">
<title>I N D I A N M A R T .C O M </title>
<div id="wrapper">
    <div id="header"><img src="images/logo1.jpg" style="width: 400px;height: 80px;margin: 5px;"></div>
    <div id="banner"><img src="images/banner1.png" style="width: 982px;height: 200px;margin-left: -2px;"></div>
    <div id="menu" class="menuhover" style="margin-top: -15px;">
        <%@include file="menus.jsp" %> 
    </div>
    <div id="contain">
        <div id="containrite">
            <br>
            <%  if (includepage.equals("book") || includepage.equals("cloths") || includepage.equals("electronics") || includepage.equals("bedroom") || includepage.equals("toyes")) { %>  
            <br>
            <%@include file="listpage.jsp" %> 
            <% }  %>
            <%  if (includepage.equals("regi")) { %>  <%@include file="regiratration.jsp" %> <% }  %>
            <%  if (includepage.equals("byesucess")) { %>  <%@include file="byesucess.jsp" %> <% }  %>
            <%  if (includepage.equals("failuer")) { %>  <%@include file="failuer.jsp" %> <% }  %>
            <%  if (includepage.equals("sucess")) { %>  <%@include file="sucess.jsp" %> <% }  %>
            <%  if (includepage.equals("details")) { %>  <%@include file="detailspage.jsp" %> <% }  %>
            <%  if (includepage.equals("login")) { %>  <%@include file="login.jsp" %> <% }  %>
            <%  if (includepage.equals("default")) { %>  <%@include file="default.jsp" %> <% } else {  %>
            <% }%>
        </div>
    </div>
    <div id="footer"></div>
</div>