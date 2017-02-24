<%-- 
    Document   : prokiso2-2
    Created on : 2017/02/24, 14:01:18
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
            char word='A'; 
            String message="";
            switch(word){
                case 'A':
                    message="英語";
                case 'あ':
                      message="日本語";
                      
                    
        }
          out.print(message);
            
            
            
            %>
            
    </body>
</html>
