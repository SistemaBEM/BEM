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
@WebServlet(name = "ServletValidarProfissional", urlPatterns = {"/ServletValidarProfissional"})
public class ServletValidarProfissional extends HttpServlet {

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
            out.println("<title>Servlet ServletValidarProfissional</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletValidarProfissional at " + request.getContextPath() + "</h1>");
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
        
        boolean r = false;        
        Psicologo psic = new Psicologo();
        ArrayList<Psicologo> psics = new ArrayList();
        String[] validacao = request.getParameterValues("select_validacao");
        String[] crps = request.getParameterValues("crpValidacao");
        
        
        for (int i = 0; i < validacao.length; i++) {
            if (validacao[i].equals("nao_validado")) {                 
                psic.setCrp(crps[i]);
                psic.setStatusValidacao(false);
                System.out.println("não foi validado = " + crps[i]);
            }
            if (validacao[i].equals("validado")) { 
                psic.setCrp(crps[i]);
                psic.setStatusValidacao(true);
                System.out.println("não foi validado = " + crps[i]);
            }

            psics.add(i, psic);
        
            try {
                    if (PsicologoFacede.Validar(psics.get(i))) {
                        //response.sendRedirect("/BEM-projeto/ServletListarProfissional");
                        r = true;
                        //response.sendRedirect("/loginAdministrador/home.jsp");
                    } else {
                        r = false;
                        //response.sendRedirect("/validacaoPsicologo/index.jsp?msg=ErrorOperacao");
                    }
            } catch (SQLException ex) {
                Logger.getLogger(ServletValidarProfissional.class.getName()).log(Level.SEVERE, null, ex);
            } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(ServletValidarProfissional.class.getName()).log(Level.SEVERE, null, ex);
            }     
        } // funcionando
        
            if (r == true) {
                response.sendRedirect("/BEM-projeto/ListarProfissional");
            } else {
                response.sendRedirect("validacaoPsicologo/index.jsp?msg=ErrorOperacao");
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
