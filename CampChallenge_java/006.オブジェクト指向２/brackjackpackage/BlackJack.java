package brackjackpackage;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 *
 * @author tar0
 */
public class BlackJack extends HttpServlet {
    
    

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
       
        Dealer D=new Dealer();
        D.setCard(D.deal());
        D.open();
        D.checkSum();
        while(D.checkSum()==true){
        if(D.open()>21){
            for(int v=0; v<D.myCards.size(); v++){
                if(D.myCards.get(v)==11){
                    D.myCards.set(v,1);
                }
            }
        }
        D.setCard(D.hit());
        D.open();
        }
       
        User U=new User();
        U.setCard(D.deal());
        U.open();
        U.checkSum();
        while(U.checkSum()==true){
            if(U.open()>21){
                for(int v=0; v<U.myCards.size(); v++){
                   if(U.myCards.get(v)==11){
                       U.myCards.set(v,1);
                   }
                }
            }
            U.setCard(D.hit());
            U.open();
        }
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BlackJack</title>");            
            out.println("</head>");
            out.println("<body>");
            //どちらの数字も表示
            //if〜21以下だったら比べてUser勝てばwin表示、負けたらlose表示
            //Userが22以上バスト
            //同じならドロー
            out.println("ディーラー"+D.open());
            out.println("ユーザー"+U.open());
            if(U.open()>21){
                out.println("BUST");
            }
            else if(U.open()>D.open()){
                out.println("WIN");
            }else if(U.open()==D.open()){
                out.println("DRAW");
            }else if(D.open()<22){
                out.println("LOSE");
            }else{
                out.println("ディーラーBUST"+"・WIN");
        }    
    
            out.println("<h1>Servlet BlackJack at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
