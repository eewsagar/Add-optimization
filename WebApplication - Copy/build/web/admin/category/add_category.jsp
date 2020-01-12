<%@page import="java.awt.*" %>
<%@page import="java.util.*" %>
<%
    Date date = new Date();
    String date1 = date.toString();
%>
<style>
    .regitable{
        border-collapse: collapse;
        /*width: 90%;*/
        border-color: gray; 
    }
    .regitable tr{
        height: 40px;
    }
    .regitable input{
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
        ADD NEW CATEGORY
    </h3>
</div>
<br/>
&nbsp;<a href="home.jsp?page=view_cat" class="a_blue">view product</a>
<br/>
<br/>
<form name="frmLogin" id="frmLogin" method="post" action="../CategoryServlet">
    <table border="0" class="regitable">
        <tr>
            <td id="lable">CATEGORY NAME :&nbsp;</td>
            <td  ><input type="text" name="txtCategoryName"></td>
        </tr>
        <tr>
            <td id="lable">ADDED DATE :&nbsp;</td>
            <td  ><input type="text" name="txtEntryDate" value="<%=date1%>"></td>
        </tr>
        <tr>
            <td id="label">DESCRIPTION :&nbsp;</td>
            <td><textarea name="txtCategoryDescription"></textarea></td>
        </tr>
        <tr>
            <td></td>
            <td align="right">
                <input type="submit" class="button" name="btnSubmit" id="submit" value="Submit">
                <input type="reset"  class="button"  name="btnReset" value="Reset" id="submit">
            </td>
        </tr>
    </table>
</form>