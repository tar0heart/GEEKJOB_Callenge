<%-- 
    Document   : data2
    Created on : 2017/03/24, 14:27:39
    Author     : tar0
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
            request.setCharacterEncoding("UTF-8"); 
        

            String n=request.getParameter("txtName");
            String r1=request.getParameter("rdoSample");
            String r2=request.getParameter("rdowoSample");
            String h=request.getParameter("mulText");
            
            out.print(n+r1+r2+h);
        %>
    </body>
</html>
