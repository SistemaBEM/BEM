package controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import entidades.Usuario;
import fachadas.UsuarioFacede;
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
 * @author Leonaardo Marques
 */
@WebServlet(name = "ServletCadastroUsuario", urlPatterns = {"/ServletCadastroUsuario"})
public class ServletCadastroUsuario extends HttpServlet {

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
            out.println("<title>Servlet ServletUsuario</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletUsuario at " + request.getContextPath() + "</h1>");
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
        
        String message = null;
        String m = null;
        
        try {
            if (UsuarioFacede.uniqueEmail(request.getParameter("EMail"))) {
                m = "E-mail";
            } else if (UsuarioFacede.uniqueLogin(request.getParameter("login"))) {
                m = "Login";
            } else {
                m = " E-mail e Login";
            }
        } catch (SQLException ex) {
            Logger.getLogger(ServletCadastroAdministrador.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String nome = request.getParameter("nome_completo");
        String email = request.getParameter("EMail");
        String login = request.getParameter("login");
        String senha = request.getParameter("conf_senha");
                
        Usuario u = new Usuario();
        u.setNome_completo(nome);
        u.setEmail(email);
        u.setUsuario(login);
        u.setSenha(senha);
                
            try {
                if ( UsuarioFacede.inserirUser(u)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("login", login);
                    response.sendRedirect("cadastroUsuario/sucesso.jsp");
                } else {
                    message = "<center>"+ m + " já cadastrado(s)</center>";
                    request.getSession().setAttribute("message", message);
                    response.sendRedirect("cadastroUsuario/index.jsp");
                    //request.getRequestDispatcher("cadastroUsuario/erro.jsp").forward(request, response);
                }
            } catch (SQLException ex) {
                Logger.getLogger(ServletCadastroUsuario.class.getName()).log(Level.SEVERE, null, ex);
            } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(ServletCadastroUsuario.class.getName()).log(Level.SEVERE, null, ex);
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
