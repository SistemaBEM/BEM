/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static entidades.Cryptography.Cryptography;
import entidades.MudarSenha;
import entidades.Usuario;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import static services.ConectarBanco.closeConn;
import static services.ConectarBanco.getConnection;

/**
 *
 * @author Leonardo Marques
 */
public class UsuarioDAO {
            
    public static boolean inserirUser(Usuario u) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
        boolean r = false;
        Connection connection = getConnection();
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement ("INSERT INTO cad_usuario(nome, email, login, senha) VALUES (?,?,?,?);" );
            ps.setString(1, u.getNome_completo());
            ps.setString(2, u.getEmail());
            ps.setString(3, u.getUsuario());
            ps.setString(4, Cryptography(u.getSenha()));
            ps.execute(); 
            r = true;
        } catch (SQLException e) {
            System.out.println("error: " + e);
        } finally {
            closeConn(connection, null, ps, null);
        }
        return r;
    }
    
    public static boolean verificacaoLogin(Usuario u) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {       
          boolean r = false;
          Connection connection = getConnection();
          PreparedStatement ps = null;
          ResultSet rs = null;
            try
            {
                ps = connection.prepareStatement("select * from cad_usuario where login = ? and senha = ?;");
                ps.setString(1, u.getUsuario());
                ps.setString(2, Cryptography(u.getSenha()));
                System.out.println("senha" +  Cryptography(u.getSenha()));
                rs = ps.executeQuery();
                
                while (rs.next()) {
                    r = true; 
                    System.out.println("ENCONTRADO CADASTRO");
                }
                
            } catch (SQLException e) {
                System.out.println("error: " + e);
            } finally {
                closeConn(connection, rs, ps, null);
            }
        return r;
    }
    
    public static boolean mudarSenha(MudarSenha ms) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {            
        boolean r = false;
        Connection connection = getConnection();
        PreparedStatement ps = null;
        try
        {   
            ps = connection.prepareStatement(
            "update cad_usuario set senha = '" + Cryptography(ms.getSenha()) + "' where crp = '" + ms.getValidador() + "' ;" );
            ps.execute();
            r = true; 
        } catch (SQLException e) {
            System.out.println("error: " + e);
        } finally {
            closeConn(connection, null, ps, null);
        }
        return r;
    }
    
    public static boolean uniqueEmail(String obj) throws SQLException {
        boolean r = false;
        Connection connection = getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try {
            ps = connection.prepareStatement("select nome from cad_usuario where email=" + "'" + obj + "';" );
            rs = ps.executeQuery();
            if (rs.next()) {
                r = true; 
            }
        } finally {
            closeConn(connection, rs, ps, null);
        }
        return r;
    }
    
    public static boolean uniqueLogin(String obj) throws SQLException {
        boolean r = false;
        Connection connection = getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement("select nome from cad_usuario where login=" + "'" + obj + "';" );
            ps.execute();
            rs = ps.executeQuery();
            if (rs.next()) {
                r = true; 
            } 
        } finally {
            closeConn(connection, rs, ps, null);
        }
        return r;
    }
    
     public static int usuarioID(String obj) throws NoSuchAlgorithmException, UnsupportedEncodingException, SQLException {
        Connection connection = getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        int  id = 0;
            try
            {
                ps = connection.prepareStatement("select usuarioID from cad_usuario where login = '"+obj+"';");
                rs = ps.executeQuery();
                if (rs.next()) {
                    id = rs.getInt("usuarioID");
                    System.out.println(id);
                }
            } catch (SQLException e) {
                System.out.println("error: " + e);
            } finally {
                closeConn(connection, rs, ps, null);
            }
        return id;
    }   



}
