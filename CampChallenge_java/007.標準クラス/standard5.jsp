<%-- 
    Document   : standard5
    Created on : 2017/03/22, 10:36:35
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
        <h1><%
            String name="中村将太";
            out.println("文字数は"+name.length());
            out.println("バイト数は"+name.getBytes("UTF-8").length);
            
            
            
            %></h1>
    </body>
</html>
