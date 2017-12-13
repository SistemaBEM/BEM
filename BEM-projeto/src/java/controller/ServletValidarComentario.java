/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entidades.ApplyProfissional;
import entidades.Usuario;
import entidades.UsuarioAtendimento;
import fachadas.ApplyProfissionalFacede;
import fachadas.PsicologoFacede;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Maryanne Alice
 */
@WebServlet(name = "ServletValidarComentario", urlPatterns = {"/ServletValidarComentario"})
public class ServletValidarComentario extends HttpServlet {

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
            out.println("<title>Servlet ServletValidarComentario</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletValidarComentario at " + request.getContextPath() + "</h1>");
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
        ApplyProfissional ap = new ApplyProfissional();
        ArrayList<ApplyProfissional> aps = new ArrayList();
        boolean r = false;
        String nomeUs[] = request.getParameterValues("nome");
        String emails[] = request.getParameterValues("email");
        String[] validacao = request.getParameterValues("select_validacao");
                
        for (int i = 0; i < validacao.length; i++) {
            if (validacao[i].equals("nao_validado")) {  
                ap.setNomeCli(nomeUs[i]);
                ap.setEmail(emails[i]);
                ap.setStatusValidacaoApply(false);
            }
            if (validacao[i].equals("validado")) { 
                ap.setNomeCli(nomeUs[i]);
                ap.setEmail(emails[i]);
                ap.setStatusValidacaoApply(true);
            }
            System.out.println("controller.ServletValidarComentario.doPost() == " + ap);
            aps.add(i, ap);
        
            try {
                    if (ApplyProfissionalFacede.Validar(aps.get(i))) {
                        r = true;
                    } else {
                        r = false;
                    }
            } catch (SQLException ex) {
                Logger.getLogger(ServletValidarProfissional.class.getName()).log(Level.SEVERE, null, ex);
            } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(ServletValidarProfissional.class.getName()).log(Level.SEVERE, null, ex);
            }     
        } // funcionando
        
            if (r == true) {
                response.sendRedirect("/BEM-projeto/ListarComentarios");
            } else {
                response.sendRedirect("loginProfissional/validar-comentario.jsp?msg=ErrorOperacao");
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
