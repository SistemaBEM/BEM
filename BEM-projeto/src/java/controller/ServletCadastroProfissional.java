/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entidades.Psicologo;
import entidades.TipoAtendimento;
import fachadas.PsicologoFacede;
import fachadas.TipoAtendimentoFacede;
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
@WebServlet(name = "ServletCadastroProfissional", urlPatterns = {"/ServletCadastroProfissional"})
public class ServletCadastroProfissional extends HttpServlet {

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
            out.println("<title>Servlet ServletPsicologo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletPsicologo at " + request.getContextPath() + "</h1>");
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
            if (PsicologoFacede.uniqueCRP(request.getParameter("crp"))) {
                m = "CRP " +request.getParameter("crp")+ " já cadastrado";
            } else if (PsicologoFacede.uniqueLogin(request.getParameter("login"))) {
                m = "Login " + request.getParameter("login") + " já cadastrado";
            } else {
                m = " CRP "+request.getParameter("crp")+ " e Login " +request.getParameter("login")
                        + " já cadastrados";
            }
        } catch (SQLException ex) {
            Logger.getLogger(ServletCadastroAdministrador.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        String nome = request.getParameter("nome_completo");
        String crp = request.getParameter("crp");
        String rua = request.getParameter("rua");
        String numero = request.getParameter("numero");
        String bairro = request.getParameter("bairro");
        String cidade = request.getParameter("cidade");
        String contato = request.getParameter("contato");
        String contatoOP = request.getParameter("contatoOp");
        String email = request.getParameter("EMail");
        String login = request.getParameter("login");
        String senha = request.getParameter("conf_senha");
        String sexo = request.getParameter("select_sexo");
                
        if (numero == ""){ numero = "s/n"; }
        
        TipoAtendimento ta = new TipoAtendimento();
        String[] atend = request.getParameterValues("select_atendimento");
        ta.setCrp(crp);
        for (int i = 0; i < atend.length; i++) {
            if (atend[i].equals("privado")){
                ta.setPrivado(true);
            }
            if (atend[i].equals("amil")){
                ta.setAmil(true);
            }
            if (atend[i].equals("unimed-natal")){
                ta.setUnimedNatal(true);
            }
            if (atend[i].equals("hapvida")){
                ta.setHapvida(true);
            }
        }        
        Psicologo psic = new Psicologo();
        psic.setCrp(crp);
        psic.setNome(nome);
        psic.setRua(rua);
        psic.setNumero(numero);
        psic.setBairro(bairro);
        psic.setCidade(cidade);
        psic.setContato(contato);
        psic.setContatoOp(contatoOP);
        psic.setEMail(email);
        psic.setLogin(login);
        psic.setSenha(senha);
        psic.setSexo(sexo);
                
            try {
                if ( TipoAtendimentoFacede.inserirTA(ta)&&PsicologoFacede.inserirPS(psic)
                        &&PsicologoFacede.solicitacaoCadastral(psic)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("crp", crp);
                    response.sendRedirect("cadastroProfissional/sucesso.jsp");
                } else {
                    message = "<center><b>"+ m + "</b></center>";
                    request.getSession().setAttribute("message", message);
                    response.sendRedirect("cadastroProfissional/index.jsp");
                }
            } catch (SQLException ex) {
                Logger.getLogger(ServletCadastroProfissional.class.getName()).log(Level.SEVERE, null, ex);
            } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(ServletCadastroProfissional.class.getName()).log(Level.SEVERE, null, ex);
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
