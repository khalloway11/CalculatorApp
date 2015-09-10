<%-- 
    Document   : AllCalculators
    Created on : Sep 9, 2015, 2:44:18 PM
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
        <table>
            <tr>
                <td>
                    <form id="rectangleForm" name="rectangleForm" method="POST" action="../AllCalculators?calculation=rectangle">
                        <input type="text" id="recLengthInput" name="recLength" placeholder="Enter the length"><br/>
                        <input type="text" id="recHeightInput" name="recHeight" placeholder="Enter the width"><br/>
                        <input type="submit" value="Submit">
                    </form>
                </td>
                <td>
                    <form id="circleForm" name="circleForm" method="POST" action="../AllCalculators?calculation=circle">
                        <input type="text" id="radiusInput" name="radius" placeholder="Enter the radius"><br/>
                        <input type="submit" value="Submit">
                    </form>
                </td>
                <td>
                    <form id="triangleForm" name="triangleForm" method="POST" action="../AllCalculators?calculation=triangle">
                        <input type="text" id="triLengthInput" name="triLength" placeholder="Enter the length"><br/>
                        <input type="text" id="triHeightInput" name="triHeight" placeholder="Enter the width"><br/>
                        <input type="submit" value="Submit">
                    </form>
                </td>
            </tr>
            <tr>
                <%
                    Object AreaResult = request.getAttribute("area");
                    Object ShapeResult = request.getAttribute("shape");
                    String shape = "";
                    double area = 0;
                    if(AreaResult != null && ShapeResult != null){
                        area = (Double)AreaResult;
                        shape = (String)ShapeResult;
                    } else {
                        shape = "shape";
                    }
                %>
                <td>
                    <h1>The area of the <%=shape %> is: <%=area %></h1>
                </td>
            </tr>
        </table>
        
        
    </body>
</html>
