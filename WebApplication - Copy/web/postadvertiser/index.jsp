<html>
    <head>
        <link href="css/style.css" rel="stylesheet">
        <title>FREE ADD POST SITE</title>
        <title>
            WELCOME TO FREE POST ADD
        </title>
    </head>
    <body>
        <form name="frmLogin" id="frmLogin" method="post" action="../AdvertiserLogin">
            <div id="wrapper" style="min-height: 200px;margin-top: 200px;width: 400px;border-radius:5px;border: solid 5px gray;">
                <div id="header"style="width: 399px;height: 40px;" >
                    <center>
                        <h3 style="color: black;line-height: 40px;margin-left: 8px;">
                            W E C O M E TO F R E E P O S T A D D
                        </h3>
                    </center>
                </div>
                <center>
                    <table >
                        <tr>
                            <td colspan="2">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="label">Username&nbsp;:&nbsp;&nbsp;</td>
                            <td><input type="text" name="txtUsername" id="txtUsername" value=""></td>
                        </tr>
                        <tr>
                            <td class="label">Password&nbsp;:&nbsp;&nbsp;</td>
                            <td><input type="password" name="txtPassword" id="txtPassword" ></td>
                        </tr>
                        <tr>
                            <td colspan="2" align="right">
                                <input type="submit" value="Login" name="btnLogin" onclick="return getValidate()" class="button">
                            </td>
                        </tr>
                    </table>
                </center>
            </div>
        </form>
    </body>
</html>
<script>
    function getValidate() {
        var txtUsername = document.getElementById("txtUsername").value;
        if (txtUsername === '') {
            alert("ENTER PROPER USERNAME ");
            return false;
        }
        var txtPassword = document.getElementById("txtPassword").value;
        if (txtPassword === '') {
            alert("ENTER PROPER USERNAME ");
            return false;
        }
        return true;
    }
</script>