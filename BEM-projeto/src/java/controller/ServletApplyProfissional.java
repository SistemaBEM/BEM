/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entidades.ApplyProfissional;
import fachadas.ApplyProfissionalFacede;
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
@WebServlet(name = "ServletApplyProfissional", urlPatterns = {"/ServletApplyProfissional"})
public class ServletApplyProfissional extends HttpServlet {

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
            out.println("<title>Servlet ServletApplyProfissional</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletApplyProfissional at " + request.getContextPath() + "</h1>");
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
            throws ServletException, IOException, UnsupportedEncodingException {
        //processRequest(request, response);
        
        String comentario = request.getParameter("mensagem"); 
        int nota = Integer.parseInt(request.getParameter("select_notaProfissional"));
        int crp = Integer.parseInt(request.getParameter("select_nomeProfissional"));
        String login = (String) request.getAttribute("login");
        
        
        ApplyProfissional ap = new ApplyProfissional();
        ap.setComentario(comentario);
        ap.setCrp(crp);
        ap.setLogin(login);
        ap.setNota(nota);
        
        try {
                if (ApplyProfissionalFacede.inserirApply(ap)) {
                    String message = "<center><b>Comentário cadastrado com sucesso!</b></center>";
                           // + "<br/>Após confirmação do profissional iremos torná-lo público "
                           // + "<br/> obs. ele não poderá ver a nota e nem o comentário atribuído. </center>";
                    
                    request.getSession().setAttribute("message", message);
                    response.sendRedirect("loginUsuario/home.jsp");
                } else {
                    String message = "<center><b>Ocorreu um erro! Tente novamente =D</b></center>";
                    request.getSession().setAttribute("message", message);
                    response.sendRedirect("loginUsuario/home.jsp");
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
