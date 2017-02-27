<%-- 
    Document   : prokiso2-5
    Created on : 2017/02/24, 18:09:54
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
        <%int x=0;
      int y=0;
        
        for(int i=0; i<100; i++){
        x++;
        y=y+(x);
        
        out.print(y);
        }
        %>
                
    </body>
</html>
