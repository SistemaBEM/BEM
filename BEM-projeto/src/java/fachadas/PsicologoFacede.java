/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fachadas;

import dao.PsicologoDAO;
import entidades.MudarSenha;
import entidades.Psicologo;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.Collection;

/**
 *
 * @author Maryanne Alice
 */
public class PsicologoFacede {
    
    public static boolean inserirPS(Psicologo psic) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
        return PsicologoDAO.inserirPS(psic);
    }
    public static boolean verificacaoLogin(Psicologo psic) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
        return PsicologoDAO.verificacaoLogin(psic);
    }
    public static boolean mudarSenha(MudarSenha ms) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
        return PsicologoDAO.mudarSenha(ms);
    }
    public static boolean uniqueCRP(String obj) throws SQLException {
        return PsicologoDAO.uniqueCRP(obj);
    }
    public static boolean uniqueLogin(String obj) throws SQLException {
        return PsicologoDAO.uniqueLogin(obj);
    }
    public static boolean solicitacaoCadastral(Psicologo psic) throws SQLException {
        return PsicologoDAO.solicitacaoCadastral(psic);
    }
    
    public static Collection<Psicologo> Listar() {
        return PsicologoDAO.Listar();
    }
    
    public static Collection<Psicologo> ListarParaUsuario() {
        return PsicologoDAO.ListarParaUsuario();
    }
    
    // Astrogilda Caroline

    public static Psicologo Login(Psicologo psic) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
        return PsicologoDAO.Login(psic);
    }
    public static Psicologo Update(Psicologo prof) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
        return PsicologoDAO.Update(prof);
    }
    
    public static boolean Validar(Psicologo prof) throws NoSuchAlgorithmException, UnsupportedEncodingException, SQLException {
        return PsicologoDAO.Validar(prof);
    }

    public static String SexoPsic(Psicologo psic) throws NoSuchAlgorithmException, UnsupportedEncodingException, SQLException {
        return PsicologoDAO.SexoPsic(psic);
    }
    
    public static Boolean Validado(Psicologo psic) throws NoSuchAlgorithmException, UnsupportedEncodingException, SQLException {
        return PsicologoDAO.Validado(psic);
    }
}
