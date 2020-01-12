<%
    Object username = request.getSession().getAttribute("loginid");
%>
<br/>
<style>
 
    #table{
        width: 100%;background-color: #3A3A3A;color: white;
        border-collapse: collapse;
        height: 25px;
    }
    #table td {
        text-align: center;
    }
    #table td a{
        font-size: 11px;font-family: verdana;
        text-align: center;
    }
</style>
<table id="table" border="1">
    <tr>
        <td width="123px;"><a href="index.jsp" >HOME</a></td>
        <%
            if (username == null) {
        %>
        <td width="123px;"><a href="index.jsp?page=regi">POST YOUR ADD</a></td>
        <% } %>
        <td width="123px;"><a href="index.jsp?page=book">BOOKS</a></td>
        <td width="123px;"><a href="index.jsp?page=cloths">CLOTHING </a></td>
        <td width="123px;"><a href="index.jsp?page=electronics">ELECTRONICS</a></td>
        <td width="123px;"><a href="index.jsp?page=bedroom">KITCHEN</a></td>
        <td width="123px;"><a href="index.jsp?page=toyes">TOYS & GAMES</a></td>
        <td width="123px;"><a href="index.jsp?page=toyes">
                <div id="global-nav">
                    <ul>
                        <li><a href="#products">Products</a>
                            <ul>
                                <li><a href="#widgets">Widgets</a></li>
                                <li><a href="#sites">Sites</a></li>
                                <li><a href="#gadgets">Gadgets</a></li>
                            </ul>
                        </li>
                    </ul>
                    There h
            </a></td>

        <td width="123px;">
            <%
                if (username == null) {
            %>
            <a href="index.jsp?page=login">LOGIN</a>
            <%
            } else {
            %>
            <a href="logout.jsp">LOG OUT</a>
            <%
                }
            %>
        </td>
    </tr>
</table>