<%
    String type = "";
    if (request.getParameter("mode") != null) {
        type = request.getParameter("mode").toString();
    }
%>
<br/>
<style>
    .regitable{
        border-collapse: collapse;
        width: 90%;
        border-color: gray; 
    }
    .regitable tr{
        height: 40px;
    }
    .regitable input{
        margin-left: 10px;
        border: solid 1px gray;
        border-radius: 0px;
    }
    #regilable{
        color: gray;
        padding-left:  10px;
    }
</style>
<div style="width: 940px;height: auto;margin: 0 auto">
    <div style="float: left">
        <img src="images/add3.jpg" style="width: 220px;height: 500px;">
    </div>
    <div style="float: left;margin-left: 40px;width: 400px;">
        <form name="frmLogin" id="frmLogin" method="post" action="./RegistrationServlet">
            <table border="0" class="regitable">
                <tr>
                    <td colspan="2">
                        <h3>&nbsp;&nbsp;NEW USER REGISTRATION</h3>
                    </td>
                </tr>
                <tr><td colspan="2">&nbsp;</td> </tr> 
                <tr>
                    <td id="regilable">FULL NAME :&nbsp;</td>
                    <td ><input type="text" name="txtFullName"  id="txtFullName"></td>
                </tr>
                <tr>
                    <td id="regilable">CONTACT NO :&nbsp;</td>
                    <td  ><input type="text" name="txtContactNo"     onkeypress="return isNumberKey(event)"  maxlength="10" id="txtContactNo"></td>
                </tr>
                <tr>
                    <td id="regilable">EMAIL ID :&nbsp;</td>
                    <td  ><input type="text" name="txtEMail"    id="txtEMail"></td>
                </tr>
                <tr>
                    <td id="regilable">USERNAME :&nbsp;</td>
                    <td  ><input type="text" name="txtUserName"    txtUserName></td>
                </tr>
                <tr>
                    <td id="regilable">PASSWORD :&nbsp;</td>
                    <td  ><input type="password" name="txtPassword"    id="txtPassword"></td>
                </tr>
                <tr>
                    <td id="regilable">RE PASSWORD :&nbsp;</td>
                    <td  ><input type="password" name="txtRePassword" id="txtRePassword">
                        <input type="hidden" name="hidden" id="hidden" value="<%=type%>"></td>
                </tr>
                <tr>
                    <td align="right" colspan="2">
                        <input type="submit" class="button"  onclick="return validateData()" name="btnSubmit" id="submit" value="Submit" >
                        <input type="reset"  class="button"  name="btnReset" value="Reset" id="submit" style="margin-right:  48px;">
                    </td>
                </tr>
            </table>
        </form>
        <br/>
        <br/>
        <br/>
    </div>
    <p style="text-align: justify">
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        Online shopping or e-shopping is a form of electronic commerce which allows consumers to 
        directly buy goods or services from a seller over the Internet using a web browser. 
        Alternative names are: e-web-store, e-shop, e-store, Internet shop, web-shop, web-store, 
        online store, online storefront and virtual store. Mobile commerce (or m-commerce) describes purchasing
        from an online retailer's mobile optimized online site or app.
    </p>
</div>

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