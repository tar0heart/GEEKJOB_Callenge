/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mypackage.sample;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author tar0
 */
public class jspser29 extends HttpServlet {
String getPro1(){
    String name1="太郎";
    String birth1="１月１日";
    String pro1="東京都";
    String prof1=name1+birth1+pro1;
    return prof1;
}
    String getPro2(){
    String name2="二郎";
    String birth2="２月２日";
    String pro2=null;
    String prof2=name2+birth2+pro2;
    return prof2;
}
    String getPro3(){
    String name3="三郎";
    String birth3="３月３日";
    String pro3="宮崎県";
    String prof3=name3+birth3+pro3;
    return prof3;
    }

    
    
    
        

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet jspser28</title>");            
            out.println("</head>");
            out.println("<body>");
                 
 
String x=getPro1();
String y=getPro2();
String z=getPro3();

        ArrayList<String>al=new ArrayList<String>();
        al.add(x);
        al.add(y);
       al.add(z);
       
      int limit=2;
for(int i=0; i<limit; i++){
    if(al.get(i)==null){
    continue;
}
        out.print(al.get(i));

            out.println("</body>");
            out.println("</html>");
        }
    }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    }
