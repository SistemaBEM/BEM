/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Administrador;
import static entidades.Cryptography.Cryptography;
import entidades.MudarSenha;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import static services.ConectarBanco.closeConn;
import static services.ConectarBanco.getConnection;

/**
 *
 * @author Maryanne Alice
 */
public class AdministradorDAO {
    
    public static boolean inserirAdmin(Administrador adm) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
        boolean r = false;
        Connection connection = getConnection();
        PreparedStatement ps = null;
        try {
             ps = connection.prepareStatement ("INSERT INTO cad_administrador(cpf, nome, login, senha) VALUES (?,?,?,?);" );
            ps.setString(1, adm.getCpf());
            ps.setString(2, adm.getNome());
            ps.setString(3, adm.getLogin());
            ps.setString(4, Cryptography(adm.getSenha()));
            ps.execute(); 
            r = true;
        } catch (SQLException e) {
            System.out.println("error: " + e);
        } finally {
            closeConn(connection, null, ps, null);
        }
        return r;
    }
    
    public static boolean verificacaoLogin(Administrador adm) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {       
        Connection connection = getConnection();
        boolean r = false;
        PreparedStatement ps = null;
        ResultSet rs = null;
            try
            {
                ps = connection.prepareStatement("select * from cad_administrador where login = ? and senha = ?;");
                ps.setString(1, adm.getLogin());
                ps.setString(2, Cryptography(adm.getSenha()));
                rs = ps.executeQuery();
                if (rs.next()) {
                    r = true; 
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
            "update cad_administrador set senha = '" + Cryptography(ms.getSenha()) + "' where cpf = '" + ms.getValidador() + "' ;" );
            ps.execute();
            r = true; 
        } catch (SQLException e) {
            System.out.println("error: " + e);
        } finally {
            closeConn(connection, null, ps, null);
        }
        return r;
    }

    public static boolean uniqueLogin(String obj) throws SQLException {
        boolean r = false;
        Connection connection = getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement("select nome from cad_administrador where login=" + "'" + obj + "';" );
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
    
    public static boolean uniqueCpf(String obj) throws SQLException {
        boolean r = false;
        Connection connection = getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement("select nome from cad_administrador where cpf=" + "'" + obj + "';" );
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
    
}