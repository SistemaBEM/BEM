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
 * @author Astrogilda Caroline
 */
@WebServlet(name = "ServletEditarProfissional", urlPatterns = {"/ServletEditarProfissional"})
public class ServletEditarProfissional extends HttpServlet {

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
            out.println("<title>Servlet ServletEditarProfissional</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletEditarProfissional at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        
        String login = (String) request.getSession().getAttribute("login");
        String nome = request.getParameter("nome_completo");
        String rua = request.getParameter("rua");
        String numero = request.getParameter("numero");
        String bairro = request.getParameter("bairro");
        String cidade = request.getParameter("cidade");
        String contato = request.getParameter("contato");
        
        Psicologo prof = (Psicologo) session.getAttribute("prof");
        prof.setLogin(login);
        prof.setNome(nome);
        prof.setRua(rua);
        prof.setNumero(numero);
        prof.setBairro(bairro);
        prof.setCidade(cidade);
        prof.setContato(contato);
        
        try {
                prof = PsicologoFacede.Update(prof);
                if (prof != null) {
                    session.setAttribute("prof", prof);
                    session.setAttribute("login", login);
                    String sexo = PsicologoFacede.SexoPsic(prof);
                    request.getSession().setAttribute("sexo", sexo);
                    
                    response.sendRedirect("loginProfissional/home.jsp");
                } else {
                    request.getRequestDispatcher("loginProfissional/erro.jsp").forward(request, response);
                }
            } catch (SQLException ex) {   
                Logger.getLogger(ServletLoginProfissional.class.getName()).log(Level.SEVERE, null, ex);
            } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(ServletLoginProfissional.class.getName()).log(Level.SEVERE, null, ex);
        } catch (UnsupportedEncodingException ex) {
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
