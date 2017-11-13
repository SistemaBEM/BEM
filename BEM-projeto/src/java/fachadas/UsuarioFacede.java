/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fachadas;

import dao.UsuarioDAO;
import entidades.MudarSenha;
import entidades.Usuario;
import java.sql.SQLException;

/**
 *
 * @author marya
 */
public class UsuarioFacede {
    
    public static boolean inserirUser(Usuario u) throws SQLException{
        return UsuarioDAO.inserirUser(u);
    }
    public static boolean verificacaoLogin(Usuario u) throws SQLException{
        return UsuarioDAO.verificacaoLogin(u);
    }
    public static boolean mudarSenha(MudarSenha ms) throws SQLException{
        return UsuarioDAO.mudarSenha(ms);
    }
    public static boolean uniqueLogin(String obj) throws SQLException{
        return UsuarioDAO.uniqueLogin(obj);
    }
    public static boolean uniqueEmail(String obj) throws SQLException{
        return UsuarioDAO.uniqueEmail(obj);
    }
    
}
