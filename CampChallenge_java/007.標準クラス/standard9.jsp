<%-- 
    Document   : standard9
    Created on : 2017/03/22, 12:01:49
    Author     : tar0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*,java.text.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%
            File txt=new File(application.getRealPath("myprof.txt"));
            FileReader fr=new FileReader(txt);
            BufferedReader br=new BufferedReader(fr);
            
            String str;
            
            while((str=br.readLine())!=null){
            out.print(str);
            }
            br.close(); 
            %></h1>
    </body>
</html>
