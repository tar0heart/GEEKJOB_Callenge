<%-- 
    Document   : prokiso2-3
    Created on : 2017/02/24, 15:53:51
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
            int x=8;
 
            for(int i=1; i<21; i++){
       out.print(x*8*i);
            }
        %>
        
    </body>
</html>
