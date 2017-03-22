<%-- 
    Document   : standard7
    Created on : 2017/03/22, 11:29:19
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
            String chikan="きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます";
            
            out.print(chikan.replace("U","う").replace("I","い"));
            
            
            %></h1>
    </body>
</html>
