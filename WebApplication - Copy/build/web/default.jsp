<%@page import="com.main.dto.ProductDTO" %>
<%@page import="com.main.service.ProductService" %>
<%@page import="java.awt.*" %>
<%@page import="java.util.*" %>
<%
    ArrayList<ProductDTO> bookList = ProductService.searchOrListProduct("BOOK", "byadvertiser");
    ArrayList<ProductDTO> clothList = ProductService.searchOrListProduct("CLOTHING", "byadvertiser");
    ArrayList<ProductDTO> electoList = ProductService.searchOrListProduct("ELECTRONICS", "byadvertiser");
    ArrayList<ProductDTO> toyesList = ProductService.searchOrListProduct("TOYS & GAMES", "byadvertiser");
    ArrayList<ProductDTO> kitccList = ProductService.searchOrListProduct("KITCHEN", "byadvertiser");
%>
<div style="width: 940px;height: auto;border: solid 1px rgb(220,220,220);">
    <div style="width: 940px;height: 35px;;border-bottom:  solid 1px rgb(220,220,220);background: rgb(240,240,240)">
        <h3 style="padding: 10px;">
            DESIGN OF OPTIMIZED ADVERTISING
        </h3>
    </div>
    <p style="text-align: justify;line-height: 20px;padding: 10px;font-family: verdana;font-size: 12px;">
        A main goal of online display advertising is to drive purchases (etc.) following ad engagement. 
        However, there often are too few purchase conversions for campaign evaluation and optimization,
        due to low conversion rates, cold start periods, and long purchase cycles (e.g., with brand advertising). 
        This paper presents results across dozens of experiments within individual online display advertising campaigns,
        each comparing different proxies" for measuring success. Measuring success is critical both for evaluating and
        comparing different targeting strategies, and for designing and optimizing the strategies in the first place
        (for example, via predictive modeling). Proxies are necessary because data on the actual goals of advertising 
        (e.g., purchasing, increased brand affinity, etc.) often are scarce, missing, or fundamentally difficult or impossible
        to observe. The paper presents bad news and good news. The most commonly cited and used proxy for success is a
        click on an advertisement. The bad news is that across a large number of campaigns, clicks are not good proxies for 
        evaluation nor for optimization: buyers do not resemble clickers. The good news is that an alternative sort of proxy 
        performs remarkably well: observed visits to the brand's website. Specifically, predictive models built based on brand 
        site visits do a remarkably good job of predicting which browsers will purchase. The practical bottom line: evaluating 
        campaigns and optimizing based on clicks seems wrongheaded; however, there is an easy and attractive alternative
        use a well-chosen site visit proxy instead.
    <center>
        <a href="index.jsp?page=regi&mode=4">
            <input type="button" name="btnPostAdd" id="btnPostAdd" value="Post Your Add" style="background-color: orange;color: white">
        </a>
        <br/>
    </center>
</p>
</div>
<br/>
<div style="width: 940px;height: auto;border: solid 1px rgb(220,220,220);">
    <div style="width: 940px;height: 35px;;border-bottom:  solid 1px rgb(220,220,220);background: rgb(240,240,240)">
        <h3 style="padding: 10px;">
            BOOKS PRODUCT 
        </h3>
    </div>
    <div id="product-row">
        <%  int sr = 1;
            for (ProductDTO dTO : bookList) {%>
        <div style="width: 120px;height: 150px;border: solid 0px gray;float: left;margin-right: 33px;">
            <table style="width: 100%;height: 100%">
                <tr>
                    <td colspan="2"> 
                        <img src="images/mybook/<%=dTO.getTxtImage()%>.jpg" style="width: 118px;height: 120px;">
                    </td>
                </tr>
                <tr  align='center'>
                    <td style="color: red;font-size: 11px;font-weight: bold">
                        RS.&nbsp;<%=dTO.getPPrice()%>
                        &nbsp;&nbsp;
                        <a href="index.jsp?page=details&id=<%=dTO.getID()%>&cate=mybook" style="color: blue;font-size: 10px;">view details</a>
                        <p style="margin: 0 auto;color: green;margin-top: 5px;text-align: center">

                        </p>
                    </td>
                </tr>
            </table>
        </div>
        <% sr++;
            }%>
    </div>
</div>

<br/>
<div style="width: 940px;height: auto;border: solid 1px rgb(220,220,220);">
    <div style="width: 940px;height: 35px;;border-bottom:  solid 1px rgb(220,220,220);background: rgb(240,240,240)">
        <h3 style="padding: 10px;">
            CLOTHING
        </h3>
    </div>
    <div id="product-row">
        <%  int sr1 = 1;
            for (ProductDTO dTO : clothList) {%>
        <div style="width: 120px;height: 150px;border: solid 0px gray;float: left;margin-right: 33px;">
            <table style="width: 100%;height: 100%">
                <tr>
                    <td colspan="2"> 
                        <img src="images/clothing/<%=dTO.getTxtImage()%>.jpg" style="width: 118px;height: 120px;">
                    </td>
                </tr>
                <tr  align='center'>
                    <td style="color: red;font-size: 11px;font-weight: bold">
                        RS.&nbsp;<%=dTO.getPPrice()%>
                        &nbsp;&nbsp;
                        <a href="index.jsp?page=details&id=<%=dTO.getID()%>&cate=clothing" style="color: blue;font-size: 10px;margin-top: 5px;">view details</a>
                        <p style="margin: 0 auto;color: green;margin-top: 5px;text-align: center">

                        </p>
                    </td>
                </tr>
            </table>
        </div>
        <% sr1++;
            }%>
    </div>
</div>


<br/>
<div style="width: 940px;height: auto;border: solid 1px rgb(220,220,220);">
    <div style="width: 940px;height: 35px;;border-bottom:  solid 1px rgb(220,220,220);background: rgb(240,240,240)">
        <h3 style="padding: 10px;">
            ELECTRONICS
        </h3>
    </div>
    <div id="product-row">
        <%  int sr2 = 1;
            for (ProductDTO dTO : electoList) {%>
        <div style="width: 120px;height: 150px;border: solid 0px gray;float: left;margin-right: 33px;">
            <table style="width: 100%;height: 100%">
                <tr>
                    <td colspan="2"> 
                        <img src="images/electronics/<%=dTO.getTxtImage()%>.jpg" style="width: 118px;height: 120px;">
                    </td>
                </tr>
                <tr  align='center'>
                    <td style="color: red;font-size: 11px;font-weight: bold">
                        RS.&nbsp;<%=dTO.getPPrice()%>
                        &nbsp;&nbsp;
                        <a href="index.jsp?page=details&id=<%=dTO.getID()%>&cate=electronics" style="color: blue;font-size: 10px;">view details</a>
                        <p style="margin: 0 auto;color: green;margin-top: 5px;text-align: center">

                        </p>
                    </td>
                </tr>
            </table>
        </div>
        <% sr2++;
            }%>
    </div>
</div>


<br/>
<div style="width: 940px;height: auto;border: solid 1px rgb(220,220,220);">
    <div style="width: 940px;height: 35px;;border-bottom:  solid 1px rgb(220,220,220);background: rgb(240,240,240)">
        <h3 style="padding: 10px;">
            TOYS AND GAMES
        </h3>
    </div>
    <div id="product-row">
        <%  int sr3 = 1;
            for (ProductDTO dTO : toyesList) {%>
        <div style="width: 120px;height: 150px;border: solid 0px gray;float: left;margin-right: 33px;">
            <table style="width: 100%;height: 100%">
                <tr>
                    <td colspan="2"> 
                        <img src="images/toysgames/<%=dTO.getTxtImage()%>.jpg" style="width: 118px;height: 120px;">
                    </td>
                </tr>
                <tr  align='center'>
                    <td style="color: red;font-size: 11px;font-weight: bold">
                        RS.&nbsp;<%=dTO.getPPrice()%>
                        &nbsp;&nbsp;
                        <a href="index.jsp?page=details&id=<%=dTO.getID()%>&cate=toysgames" style="color: blue;font-size: 10px;">view details</a>
                        <p style="margin: 0 auto;color: green;margin-top: 5px;text-align: center">

                        </p>
                    </td>
                </tr>
            </table>
        </div>
        <% sr3++;
            }%>
    </div>
</div>
<br/>
<br/>
<br/>