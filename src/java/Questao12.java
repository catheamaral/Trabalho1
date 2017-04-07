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
@WebServlet(urlPatterns = {"/questao12"})
public class Questao12 extends HttpServlet {

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
        
        int nomeMaior = 0, aux = 0, max = 5;
                boolean a = false;
                
                int p[] = new int[max];
                String n[] = new String[max];
                
                aux = 1;
                for (int x = 0; x < max; x++){
                    n[x] = request.getParameter("n"+aux);
                    p[x] = Integer.valueOf(request.getParameter("p"+aux));
                    aux++;
                }
                                
                while (a==false){
                    for (int y = 0; y<max-1; y++){
                        a = true;
                        if (p[nomeMaior] < p[y+1]) {
                            nomeMaior = y+1;
                            a = false;
                        }
                    }
                }
        
                int soma = p[0]+p[1]+p[2]+p[3]+p[4];
        
        
        
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Questao12</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Questao12</h1>");
            out.println("A soma de todas as idades é: "+soma);
            out.println("A pessoa de maior idade é: "+n[nomeMaior]);
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
