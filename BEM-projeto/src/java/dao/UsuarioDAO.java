/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.MudarSenha;
import entidades.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import services.ConectarBanco;
import static services.ConectarBanco.closeConnection;
import static services.ConectarBanco.getConnection;

/**
 *
 * @author marya
 */
public class UsuarioDAO {
    
        private static Connection connection = ConectarBanco.getConnection();

    public static boolean inserirUser(Usuario u) throws SQLException {
        boolean r = false;
        getConnection();
        PreparedStatement ps;
        try {
             ps = connection.prepareStatement ("INSERT INTO cad_usuario(nome, email, login, senha) VALUES (?,?,?,?);" );
            ps.setString(1, u.getNome_completo());
            ps.setString(2, u.getEmail());
            ps.setString(3, u.getUsuario());
            ps.setString(4, u.getSenha());
            ps.execute(); 
            r = true;
        } catch (SQLException e) {
            System.out.println("error: " + e);
        } finally {
            closeConnection();
        }
        return r;
    }
    
    public static boolean verificacaoLogin(Usuario u) throws SQLException {       
          getConnection();
          boolean r = false;
          PreparedStatement ps;
          ResultSet rs;
            try
            {
                ps = connection.prepareStatement("select * from cad_usuario where login = ? and senha = ?;");
                ps.setString(1, u.getUsuario());
                ps.setString(2, u.getSenha());
                rs = ps.executeQuery();
                if (rs.next()) {
                    r = true; 
                }
            } catch (SQLException e) {
                System.out.println("error: " + e);
            } finally {
                closeConnection();
            }
        return r;
    }
    
    public static boolean mudarSenha(MudarSenha ms) throws SQLException {            
        boolean r = false;
        getConnection();
        PreparedStatement ps;
        try
        {
            ps = connection.prepareStatement(
            "update cad_usuario set senha = '" + ms.getSenha() + "' where crp = '" + ms.getValidador() + "' ;" );
            ps.execute();
            r = true; 
        } catch (SQLException e) {
            System.out.println("error: " + e);
        } finally {
            closeConnection();
        }
        return r;
    }
    
    public static boolean uniqueEmail(String obj) throws SQLException {
        boolean r = false;
        getConnection();
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = connection.prepareStatement("select nome from cad_usuario where email=" + "'" + obj + "';" );
            rs = ps.executeQuery();
            if (rs.next()) {
                r = true; 
            }
        } finally {
            closeConnection();
        }
        System.out.println("Email já cadastrado, caso não lembre de sua senha vá em Esqueci minha senha");
        return r;
    }
    
    public static boolean uniqueLogin(String obj) throws SQLException {
        boolean r = false;
        getConnection();
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = connection.prepareStatement("select nome from cad_usuario where login=" + "'" + obj + "';" );
            ps.execute();
            rs = ps.executeQuery();
            if (rs.next()) {
                r = true; 
            } 
        } finally {
            closeConnection();
        }
        System.out.println("Login já utilizado");
        return r;
    }
    
}
