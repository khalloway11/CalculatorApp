<%-- 
    Document   : areaSinglePage
    Created on : Sep 8, 2015, 9:40:38 PM
    Author     : Keiji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form id="rectangleForm" name="rectangleForm" method="POST" action="SamePageCalculator">
            <input type="text" id="lengthInput" name="length" placeholder="Enter the length"><br/>
            <input type="text" id="widthInput" name="width" placeholder="Enter the length"><br/>
            <input id="rectSubmit" type="submit" value="Submit"><br/>
        </form>
        <%
            Object AreaResult = request.getAttribute("area");
            double area = 0;
            if(AreaResult != null){
                area = (Double)AreaResult;
            }
            %>
        <h3>The area is: </h3><%=area %>
    </body>
</html>
