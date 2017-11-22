/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entidades.Psicologo;
import fachadas.PsicologoFacede;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "ServletLoginProfissional", urlPatterns = {"/ServletLoginProfissional"})
public class ServletLoginProfissional extends HttpServlet {

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
            out.println("<title>Servlet ServletLoginPsicologo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletLoginPsicologo at " + request.getContextPath() + "</h1>");
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
            throws ServletException, IOException, UnsupportedEncodingException {
        //processRequest(request, response);
        
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        
        Psicologo psic = new Psicologo();
        psic.setLogin(login);
        psic.setSenha(senha);
        
        Psicologo prof = new Psicologo();
        prof.setLogin(login);
        prof.setSenha(senha);
        
            try {
                prof = PsicologoFacede.Login(psic); // Astrogilda Caroline
                if (PsicologoFacede.verificacaoLogin(psic) && (prof != null)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("login", login);
                    
                    session.setAttribute("prof", prof); // Astrogilda Caroline
                    
                    response.sendRedirect("loginProfissional/home.jsp");
                } else {
                    request.getRequestDispatcher("loginProfissional/erro.jsp").forward(request, response);
                }
            } catch (SQLException | NoSuchAlgorithmException | UnsupportedEncodingException ex) {
                Logger.getLogger(ServletLoginProfissional.class.getName()).log(Level.SEVERE, null, ex);
            }

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
