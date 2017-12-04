/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entidades.Administrador;
import fachadas.AdministradorFacede;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "ServletCadastroAdministrador", urlPatterns = {"/ServletCadastroAdministrador"})
public class ServletCadastroAdministrador extends HttpServlet {
        public static final int MYSQL_DUPLICATE_PK = 1062;

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
            out.println("<title>Servlet ServletCadastroAdministrador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletCadastroAdministrador at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
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

        String message = null;
        String m = null;
        
        try {
            if (AdministradorFacede.uniqueCpf(request.getParameter("cpf"))) {
                m = "CPF " + request.getParameter("cpf") + " já cadastrado ";
            }
            if (AdministradorFacede.uniqueLogin(request.getParameter("login"))) {
                m = "Login " + request.getParameter("login") + " já cadastrado ";
            } 
            if (AdministradorFacede.uniqueLogin(request.getParameter("login")) 
                    && AdministradorFacede.uniqueCpf(request.getParameter("cpf"))) {
                m = "CPF " + request.getParameter("cpf") + " e Login  " + request.getParameter("login") + 
                        " já cadastrados  ";
            }
        } catch (SQLException ex) {
            Logger.getLogger(ServletCadastroAdministrador.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String cpf = request.getParameter("cpf");      
        String nome = request.getParameter("nome_completo");
        String login = request.getParameter("login");
        String senha = request.getParameter("conf_senha");


        System.out.println("controller.ServletCadastroAdministrador.doPost() = "+ cpf);
        
        Administrador adm = new Administrador();
        adm.setCpf(cpf);
        adm.setNome(nome);
        adm.setLogin(login);
        adm.setSenha(senha);
        
            try {
              
                if (AdministradorFacede.inserirAdmin(adm)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("login", login);
                    response.sendRedirect("cadastroAdministrador/sucesso.jsp");
                } else {
                    message = "<center><b>"+ m + "</b></center>";
                    request.getSession().setAttribute("message", message);
                    response.sendRedirect("cadastroAdministrador/index.jsp");
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
