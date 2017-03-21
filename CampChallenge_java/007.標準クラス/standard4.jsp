<%-- 
    Document   : standard4
    Created on : 2017/03/21, 15:20:33
    Author     : tar0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*,java.text.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%
            Calendar cal=Calendar.getInstance();
            cal.set(2015,11,31,23,59,59);
            Date past=cal.getTime();
            long a=past.getTime();
            
            Calendar calen=Calendar.getInstance();
            calen.set(2015,1,1,0,0,0);
            Date past2=calen.getTime();
            long b=past2.getTime();
            out.print(a-b);
            
        
        %>
        </h1>
    </body>
</html>
