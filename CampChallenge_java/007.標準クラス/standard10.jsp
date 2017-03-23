<%-- 
    Document   : standard10
    Created on : 2017/03/23, 16:46:59
    Author     : tar0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.lang.Boolean.*"
        import="java.util.*,java.text.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <%  Date date=new Date();
                File log=new File(application.getRealPath("log.txt"));
                FileWriter logfw=new FileWriter(log,true);
                
                    logfw.write(date+" booleanのインスタンス生成"+" 開始"+"<br>");
                
                Boolean bln1=new Boolean(true);
                Boolean bln2=new Boolean("batu");
                
                    logfw.write(date+" booleanのインスタンス生成"+" 終了"+"<br>");
                    logfw.write(date+" trueか判断して表示"+" 開始"+"<br>");
                    
                    out.println(bln1.booleanValue());
                    out.println(bln2.booleanValue());
              
                    logfw.write("<br>"+date+" trueか判断して表示"+" 終了"+"<br>");
                    logfw.write(date+" booleanオブジェクトのハッシュコード取得"+" 開始"+"<br>");
                     
                int blnhs=bln1.hashCode();
                     
                    logfw.write(date+" booleanオブジェクトのハッシュコード取得"+" 終了"+"<br>");
                    logfw.write(date+" ハッシュコードを表示"+" 開始"+"<br>");
                    
                    out.println(blnhs);
                    
                    logfw.write(date+" ハッシュコードを表示"+" 開始"+"<br>");
                
                    logfw.close();
                    
                    out.print("<br>"+"ーーログを表示ーー");
                    
                FileReader logfr=new FileReader(log);
                BufferedReader logbr=new BufferedReader(logfr);
                String logout;
                    while((logout=logbr.readLine())!=null){
                        out.println(logout);
                    }
                    logbr.close();
            
            
            
            %>   
        </h1>
    </body>
</html>
