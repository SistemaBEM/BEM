/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fachadas;

import dao.UsuarioDAO;
import entidades.MudarSenha;
import entidades.Usuario;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

/**
 *
 * @author Leonardo Marques
 */
public class UsuarioFacede {
    
    public static boolean inserirUser(Usuario u) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException{
        return UsuarioDAO.inserirUser(u);
    }
    public static boolean verificacaoLogin(Usuario u) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException{
        return UsuarioDAO.verificacaoLogin(u);
    }
    public static boolean mudarSenha(MudarSenha ms) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException{
        return UsuarioDAO.mudarSenha(ms);
    }
    public static boolean uniqueLogin(String obj) throws SQLException{
        return UsuarioDAO.uniqueLogin(obj);
    }
    public static boolean uniqueEmail(String obj) throws SQLException{
        return UsuarioDAO.uniqueEmail(obj);
    }
    
}
