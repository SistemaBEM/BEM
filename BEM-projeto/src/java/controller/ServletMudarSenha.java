/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.PsicologoDAO;
import dao.UsuarioDAO;
import entidades.MudarSenha;
import fachadas.PsicologoFacede;
import fachadas.UsuarioFacede;
import java.io.IOException;
import java.io.PrintWriter;
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
 * @author marya
 */
@WebServlet(name = "ServletMudarSenha", urlPatterns = {"/ServletMudarSenha"})
public class ServletMudarSenha extends HttpServlet {

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
            out.println("<title>Servlet ServletMudarSenha</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletMudarSenha at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
        
        String crp = request.getParameter("crp");
        String email = request.getParameter("EMail");
        String senha = request.getParameter("conf_senha");
        
        MudarSenha ms = new MudarSenha();
        ms.setSenha(senha);
        if (crp!=null) {
            ms.setValidador(crp);
            try {
                if (PsicologoFacede.mudarSenha(ms)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("validator", crp);
                    response.sendRedirect("loginProfissional/index.jsp");
                } else {
                    request.getRequestDispatcher("loginProfissional/erro.jsp").forward(request, response);
                }
            } catch (SQLException ex) {
                Logger.getLogger(ServletMudarSenha.class.getName()).log(Level.SEVERE, null, ex);
            }
        } 
        if (email!=null) {
            ms.setValidador(email);
            try {
                if (UsuarioFacede.mudarSenha(ms)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("validator", email);
                    response.sendRedirect("loginUsuario/index.jsp");
                } else {
                    request.getRequestDispatcher("loginUsuario/erro.jsp").forward(request, response);
                }
            } catch (SQLException ex) {
                Logger.getLogger(ServletMudarSenha.class.getName()).log(Level.SEVERE, null, ex);
            }
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
