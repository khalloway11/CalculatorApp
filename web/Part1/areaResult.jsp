<%-- 
    Document   : areaResult
    Created on : Sep 2, 2015, 9:34:31 PM
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
        <%
            Object AreaResult = request.getAttribute("area");
            double area = 0;
            if(AreaResult != null){
                area = (Double)AreaResult;
            }
            %>
        <h3>The area is:</h3>
        <%=area %>
    </body>
</html>
