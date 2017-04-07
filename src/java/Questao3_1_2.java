/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author cathe
 */
@WebServlet(urlPatterns = {"/questao3_1_2"})
public class Questao3_1_2 extends HttpServlet {

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
        
        int max = 10, c, y, maiorIdade = 0, maiorAltura = 0;
        String n[] = new String[max];
        int i[] = new int [max];
        float a[] = new float[max];
        boolean x = false;
        
        for (c = 0; c <max; c++)
            n[c] = request.getParameter("nome"+c);
        
        for (c = 0; c < max; c++)
            i[c] = Integer.valueOf((request.getParameter("idade"+1)));
        
        for (c = 0; c < max; c++)
            a[c] = Float.valueOf((request.getParameter("altura"+c)));
        
        while (x==false){
            for (y = 0; y<max-1; y++){
                x = true;
                if (i[maiorIdade] < i[y+1]) {
                    maiorIdade = y+1;
                    x = false;
                }
            }
        }
        
        x = false;
        while (x==false){
            for (y = 0; y<max-1; y++){
                x = true;
                if (a[maiorAltura] < a[y+1]) {
                    maiorAltura = y+1;
                    x = false;
                }
            }
}
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Questao3_1_2</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Questão 3 da atividade 2 - While</h1>");
            out.println("Maior idade: ");
            out.println("Nome: "+n[maiorIdade]+" Idade: "+i[maiorIdade]);
            out.println("Maior altura: ");
            out.println(" Nome: "+n[maiorAltura]+" Idade: "+i[maiorAltura]);
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
