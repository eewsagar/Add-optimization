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
    <p style="text-align: justify">
        Online shopping or e-shopping is a form of electronic commerce which allows consumers to 
        directly buy goods or services from a seller over the Internet using a web browser. 
        Alternative names are: e-web-store, e-shop, e-store, Internet shop, web-shop, web-store, 
        online store, online storefront and virtual store. Mobile commerce (or m-commerce) describes purchasing
        from an online retailer's mobile optimized online site or app.
    </p>
    <br/>
    <div style="float: left;width: 400px;">
        <form name="frmLogin" id="frmLogin" method="post" action="./LoginServlet">
            <table border="0" class="regitable">
                <tr>
                    <td colspan="2">
                        <h3>&nbsp;&nbsp;LOGIN FROM HERE</h3>
                    </td>
                </tr>
                <tr>
                    <td id="regilable">USERNAME :&nbsp;</td>
                    <td ><input type="text" name="txtFullName" id="txtUserName"></td>
                </tr>
                <tr>
                    <td id="regilable">PASSWORD :&nbsp;</td>
                    <td  ><input type="password" name="txtPassword" id="txtPassword"></td>
                </tr>
                <tr>
                    <td align="right" colspan="2">
                        <input type="submit" class="button" name="btnSubmit" onclick="return validateData()" id="submit" value="Submit" >
                        <input type="reset"  class="button"  name="btnReset" value="Reset" id="submit" style="margin-right:  65px;">
                    </td>
                </tr>
            </table>
        </form>
        <br/>
    </div>
    <div style="float: right">
        <img src="images/add4.jpg" style="width: 220px;height: 500px;">
    </div>
</div>


<script>
    function validateData() {
//             
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
    }
</script>