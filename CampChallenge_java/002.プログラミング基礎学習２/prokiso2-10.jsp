<%-- 
    Document   : prokiso2-10
    Created on : 2017/02/27, 14:11:59
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
        <%String hensu1=request.getParameter("param1");
      
       int moto=Integer.parseInt(hensu1);
     out.println(moto);
       //2で割れるだけ割り算する
       while(moto%2==0){
           out.println(2);
           moto/=2;
       }
       //奇数で割っていく
       for(int i=3; i<9; i+=2){     
       while(moto%i==0){
                  out.println(i);
                 moto/=i;
              }
       }
       if(moto>10) out.print("その他"+moto);
        %>
       
       
    </body>
</html>
