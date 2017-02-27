<%-- 
    Document   : プログラミング基礎1-6
    Created on : 2017/02/24, 10:46:16
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
            String hensu1=request.getParameter("param1");
 String hensu2=request.getParameter("param2");
String hensu3=request.getParameter("param3");

      //・param1=値段　・param2=個数　・param3=種別

      int sou=Integer.parseInt(hensu1);
      int ko=Integer.parseInt(hensu2);
      int syu=Integer.parseInt(hensu3);
      
      if(syu==1){
          out.println("雑貨");
      }else if(syu==2){
          out.println("生鮮食品");
      }else{
          out.println("その他");
      }
      
out.println(sou);
out.println(sou/ko);

if(sou>3000){
    out.println(sou*0.04);
}else if(sou>5000){
out.println(sou*0.05);
}

        
        %>
      
    </body>
</html>
