<%-- 
    Document   : prokiso2-4
    Created on : 2017/02/24, 17:56:46
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
            char v='A';
            
            for(int i=0; i<30; i++){
                
                v=v++;
                
                out.print(v);
            }
            

            %>
    </body>
</html>
