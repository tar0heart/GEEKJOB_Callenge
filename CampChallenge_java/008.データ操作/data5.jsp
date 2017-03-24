<%-- 
    Document   : data5
    Created on : 2017/03/24, 15:37:50
    Author     : tar0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="javax.servlet.http.HttpSession.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="./data5.jsp"method="post">
            NAME:<input type="text"name="txtName"><br>
            SEX:MEN<input type="radio"name="rdoSample"value="MEN"> WOMEN<input type="radio"name="rdoSample"value="WOMEN"><br>
            HOBBY:<textarea name="mulText"></textarea><br>
            SUBMIT:<input type="submit"sub="btnSubmit">
            <br>  
        </form>
        <%request.setCharacterEncoding("UTF-8");
        HttpSession hs=request.getSession(true);
        
            String n=request.getParameter("txtName");
            String r1=request.getParameter("rdoSample");
            String h=request.getParameter("mulText");
        
            String name="名前"+n+"<br>";
            String sex="性別"+r1+"<br>";
            String hobby="趣味"+h;
               
          hs.setAttribute("MYPROF",name+sex+hobby);
          
          out.print(hs.getAttribute("MYPROF"));
        %>
    </body>
</html>
