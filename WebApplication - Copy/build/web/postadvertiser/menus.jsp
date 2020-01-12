<%
    String txtType = (String) request.getSession().getAttribute("txtType");
%>
<div id="menu">
    <a href="home.jsp">HOME</a>
</div>
<div id="menu">
    <a href="home.jsp?page=view_pro">VIEW PRODUCT</a>
</div>
<div id="menu">
    <a href="home.jsp?page=keyword">VIEW KEYWORD</a>
</div>
<div id="menu">
    <a href="logout.jsp">LOG OUT</a>
</div>