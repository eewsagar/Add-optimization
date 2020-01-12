<%@page import="com.main.dto.CategoryDTO" %>
<%@page import="com.main.service.CategoryService" %>
<%@page import="java.awt.*" %>
<%@page import="java.util.*" %>
<%
    ArrayList<CategoryDTO> arrayList = CategoryService.searchOrListCategory("", "all");
    String entryDate = new Date().toString();
%>
<style>
    .regitable{
        border-collapse: collapse;
        /*width: 90%;*/
        border-color: gray; 
        margin-left: 10px;
    }
    .regitable tr{
        height: 40px;
    }
    .regitable input,select{
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
        ADD NEW PRODUCT
    </h3>
</div>
<br/>
&nbsp;<a href="home.jsp?page=view_pro" class="a_blue">view product</a>
<br/>
<br/>
<form name="frmLogin" id="frmLogin" method="post" action="../ProductServlet" enctype="multipart/form-data">
    <table border="0" class="regitable">
        <tr>
            <td id="lable">PRODUCT NAME :&nbsp;</td>
            <td id="lable"><input type="text" name="txtPName"></td>
            <td rowspan="6">
                <img src="#" id="myImg" style="width: 150px;height: 250px;">
            </td>
        </tr>
        <tr>
            <td id="lable">PRODUCT TYPE :&nbsp;</td>
            <td id="lable"><input type="text" name="txtPType"></td>
        </tr>
        <tr>
            <td id="lable">PRODUCT CATEGORY :&nbsp;</td>
            <td id="lable">
                <select name="txtPCategory" id="txtPCategory">
                    <option>--please select--</option> 
                    <%        for (CategoryDTO dTO : arrayList) {
                    %>

                    <option value="<%=dTO.getCategoryName()%>"><%=dTO.getCategoryName().toUpperCase()%></option> 
                    <%         }
                    %>
                </select>
            </td>
        </tr>
        <tr>
            <td id="lable">IMAGE :&nbsp;</td>
            <td>
                <select name="txtImage" id="txtImage" onchange="setFilePath(this..value)" >
                    <option>--please select--</option> 
                    <%        for (int index = 1; index <= 30; index++) {
                    %>
                    <option  value="<%=index%>"><%="" + index + ".jpg"%></option> 
                    <%         }
                    %>
                </select>
            </td>
        </tr>

        <tr>
            <td id="lable">PRODUCT PRICE :&nbsp;</td>
            <td id="lable"><input type="text" name="txtPPrice"></td>
        </tr>
        <tr>
            <td id="lable">SEARCH KEYWORDS :&nbsp;</td>
            <td id="lable"><input type="text" name="txtKeywords"></td>

        </tr>
        <tr>
            <td id="lable">ADDED DATE :&nbsp;</td>
            <td id="lable" colspan="2"><input type="text" readonly="true" name="txtEntryDate" value="<%=entryDate%>"></td>
        </tr>
        <tr>
            <td id="label">DESCRIPTION :&nbsp;</td>
            <td colspan="2"><textarea name="txtDescription"></textarea></td>
        </tr>
        <tr>
            <td id="lable"></td>
            <td align="right" colspan="2">
                <input type="submit" class="button" name="btnSubmit" id="submit" value="Submit">
                <input type="reset"  class="button"  name="btnReset" value="Reset" id="submit">
            </td>
        </tr>
    </table>
</form>
<br/>
<script>
    function setImage() {
        var image = document.getElementById("txtImage").value;
        var txtPCategory = document.getElementById("txtPCategory").value;
        var cat = "";
        if (txtPCategory == "BOOK") {
            cat = "mybook";
        }
        if (txtPCategory == "CLOATHING") {
            cat = "clothing";
        }
        if (txtPCategory == "ELECTRONICS") {
            cat = "electronics";
        }
        if (txtPCategory == "KITCHEN") {
            cat = "kitchen";
        }
        if (txtPCategory == "TOYS & GAME") {
            cat = "toysgames";
        }
        var x = document.getElementById("myImg").src = "../images/" + cat + "/" + image + ".jpg";
    }
    
    function setFilePath(path){
        document.getElementById("txtFilePath").value = path; 
        alert(document.getElementById("txtFilePath").value);
    }
</script>