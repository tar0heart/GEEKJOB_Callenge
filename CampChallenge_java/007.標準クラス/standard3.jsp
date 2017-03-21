<%-- 
    Document   : standard3
    Created on : 2017/03/21, 14:35:59
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
            cal.set(2016,10,4,10,0,0);
            Date past=cal.getTime();
            Date date=new Date(past.getTime());
            SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日HH:mm:ss");
            String sdate=sdf.format(date);
            out.print(sdate);
            
        
        %>
     </h1>
    </body>
</html>
