/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import fachadas.ApplyProfissionalFacede;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Maryanne Alice
 */
@WebServlet(name = "ServletHistoricoAvaliacoes", urlPatterns = {"/ServletHistoricoAvaliacoes"})
public class ServletHistoricoAvaliacoes extends HttpServlet {

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
            throws ServletException, IOException, ParseException, NoSuchAlgorithmException {
        
       /*     HttpSession session = request.getSession();
            String login = (String) session.getAttribute("login");
            
        if (!ApplyProfissionalFacede.Listar(login).isEmpty()) {
            request.setAttribute("lista", ApplyProfissionalFacede.Listar(login));
            getServletContext().getRequestDispatcher("/loginUsuario/historico-avaliacoes.jsp").forward(request, response);
            System.out.println( ApplyProfissionalFacede.Listar(login));
        } else {
            String message = "<center><b>Vovê ainda não avaliou nenhum profissional</b></center>";
            request.getSession().setAttribute("message", message);
            response.sendRedirect("/loginUsuario/historico-avalicoes.jsp");
            System.out.println( ApplyProfissionalFacede.Listar(login));
        }
                    System.out.println( ApplyProfissionalFacede.Listar(login));
        */
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
