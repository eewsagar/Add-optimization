<%@page import="java.awt.*" %>
<%@page import="java.util.*" %>
<%
    String arrdate[] = new Date().toString().split(" ");
    String date = arrdate[2] + "-" + arrdate[1] + "-" + arrdate[5];
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
    .regitable select{
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
        ADD NEW USER
    </h3>
</div>

<br/>
<a href="home.jsp?page=view_user" class="a_blue">view users</a>
<br/>
<br/>
<form name="frmLogin" id="frmLogin" method="post" action="../AddUserServlet">
    <table border="0" class="regitable">
        <tr>
            <td id="lable">FIRST NAME :&nbsp;</td>
            <td id="lable"><input type="text" name="txtFullName" id="txtFullName"></td>
        </tr>
        <tr>
            <td id="lable">LAST NAME :&nbsp;</td>
            <td id="lable"><input type="text" name="txtLastName" id="txtLastName"></td>
        </tr>
        <tr>
            <td id="lable">EMAIL ID :&nbsp;</td>
            <td id="lable"><input type="text" name="txtEMail" id="txtEMail"></td>
        </tr>
        <tr>
            <td id="lable">USERS TYPE :&nbsp;</td>
            <td id="lable">
                <select name="txtCatName" >
                    <option value="2">Operator</option>
                </select>
            </td>
        </tr>
        <tr>
            <td id="lable">PRIVILEGES :&nbsp;</td>
            <td id="lable">
                <table>
                    <tr>
                        <td><input type="checkbox" name="add" checked="checked" id="add" value="1" style="width: 12px;height: 12px;">&nbsp;ADD&nbsp;&nbsp;</td>
                        <td><input type="checkbox" name="edit" checked="checked" id="edit" value="1" style="width: 12px;height: 12px;">&nbsp;EDIT&nbsp;&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td id="lable">USERS NAME :&nbsp;</td>
            <td id="lable"><input type="text" name="txtUserName" id="txtUserName"></td>
        </tr>
        <tr>
            <td id="lable">USER PASSWORD :&nbsp;</td>
            <td id="lable"><input type="password" name="txtPassword" id="txtPassword"></td>
        </tr>
        <tr>
            <td id="lable">ADDED DATE :&nbsp;</td>
            <td id="lable"><input type="text" readonly="true" name="txtDate" id="txtDate" value="<%=date%>"></td>
        </tr>
        <tr>
            <td id="lable"></td>
            <td align="right">
                <input type="submit" class="button" onclick="return validateData()" name="btnSubmit" id="submit" value="Submit">
                <input type="reset"  class="button"  name="btnReset" value="Reset" id="submit">
            </td>
        </tr>
    </table>
</form>
<br/>

<script>
    function validateData() {
//             
        var val1 = document.getElementById("txtFullName").value;
        if (val1 == "") {
            alert("Enter proper Full Name");
            document.getElementById("txtFullName").focus();
            return false;
        }
        var conatct = document.getElementById("txtContactNo").value;
        if (conatct.length != 10) {
            alert("Enter proper Contact No");
            document.getElementById("txtContactNo").focus();
            return false;
        }
        var email = document.getElementById("txtEMail").value;
        if (email == "") {
            alert("Enter proper Email EMail");
            document.getElementById("txtEMail").focus();
            return false;
        }
        var user = document.getElementById("txtUserName").value;
        if (user == "") {
            alert("Enter proper UserName");
            document.getElementById("txtUserName").focus();
            return false;
        }
        var pass = document.getElementById("txtPassword").value;
        if (pass == "") {
            alert("Enter proper Password");
            document.getElementById("txtPassword").focus();
            return false;
        }
        var repass = document.getElementById("txtRePassword").value;
        if (repass != pass) {
            alert("Enter proper  RePassword");
            document.getElementById("txtRePassword").focus();
            return false;
        }
        return true;
    }
    function isNumberKey(evt)
    {
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

        return true;
    }
</script>
<br/>
<br/>