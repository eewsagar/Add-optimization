<%
    String txtType = (String) request.getSession().getAttribute("txtType");
%>
<div id="menu">
    <a href="home.jsp">HOME</a>
</div>
<div id="menu">
    <a href="home.jsp?page=view_cat">VIEW CATEGORY</a>
</div>
<div id="menu">
    <a href="home.jsp?page=view_pro">VIEW PRODUCT</a>
</div>
<%
    if (txtType.equals("1")) {
%>
<div id="menu">
    <a href="home.jsp?page=view_user">VIEW USER</a>
</div>
<% } %>
<div id="menu">
    <a href="home.jsp?page=keyword">VIEW KEYWORD</a>
</div>
<%   if (txtType.equals("1")) { %>
<div id="menu">
    <a href="home.jsp?page=optimization">OPTIMIZATION</a>
</div>
<% }%>
<div id="menu">
    <a href="logout.jsp">LOG OUT</a>
</div>