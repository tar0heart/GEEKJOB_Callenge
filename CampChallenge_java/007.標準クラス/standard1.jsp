<%-- 
    Document   : standard1
    Created on : 2017/03/21, 12:53:42
    Author     : tar0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%
            
            Calendar cal=Calendar.getInstance();
            cal.set(2016,0,1,0,0,0);
            Date past=cal.getTime();
     
            out.print(past.getTime());
            
            
            
            
            %></h1>
    </body>
</html>
