/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.MudarSenha;
import entidades.Psicologo;
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
public class PsicologoDAO {
    
    private static Connection connection = ConectarBanco.getConnection();
    
    public static boolean inserirPS(Psicologo psic) throws SQLException {
        boolean r = false;
        getConnection();
        TipoAtendimentoDAO dao = new TipoAtendimentoDAO();
        int tpID = dao.tipoAtenID();
        PreparedStatement ps = null;
        try {
             ps = connection.prepareStatement ("INSERT INTO cad_psicologo(crp, nome, rua, numero, bairro, cidade, "
                    + "telefoneComercial, telefoneOutro, email, login, senha, forma_atendimento) VALUES (?,?,?,?,?,?,?,?,?,?,?,?);" );
            ps.setString(1, psic.getCrp());
            ps.setString(2, psic.getNome());
            ps.setString(3, psic.getRua());
            ps.setString(4, psic.getNumero());
            ps.setString(5, psic.getBairro());
            ps.setString(6, psic.getCidade());
            ps.setString(7, psic.getContato());
            ps.setString(8, psic.getContatoOp());
            ps.setString(9, psic.getEMail());
            ps.setString(10, psic.getLogin());
            ps.setString(11, psic.getSenha());
            ps.setInt(12, tpID);
            ps.execute(); // filho
            r = true;
        } catch (SQLException e) {
            System.out.println("error: " + e);
        } finally {
            closeConnection();
        }
        return r;
    }
    
    public static boolean solicitacaoCadastral(Psicologo psic) throws SQLException {
        boolean r = false;
        getConnection();
        PreparedStatement ps = null;
        try {
             ps = connection.prepareStatement ("INSERT INTO validacao_cadastro(crp, nome) VALUES (?,?);" );
            ps.setString(1, psic.getCrp());
            ps.setString(2, psic.getNome());
            ps.execute();
            r = true;
        } catch (SQLException e) {
            System.out.println("error: " + e);
        } finally {
            closeConnection();
        }
        return r;
    }
    
    public static boolean verificacaoLogin(Psicologo psic) throws SQLException {       
          getConnection();
            
          boolean r = false;
          PreparedStatement ps;
          ResultSet rs;
            try
            {
                ps = connection.prepareStatement("select * from cad_psicologo where login = ? and senha = ?;");
                ps.setString(1, psic.getLogin());
                ps.setString(2, psic.getSenha());
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
            "update cad_psicologo set senha = '" + ms.getSenha() + "' where crp = '" + ms.getValidador() + "' ;" );
            ps.execute();
            r = true; 
        } catch (SQLException e) {
            System.out.println("error: " + e);
        } finally {
            closeConnection();
        }
        return r;
    }
    
    public static boolean uniqueCRP(String obj) throws SQLException {
        boolean r = false;
        getConnection();
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = connection.prepareStatement("select nome from cad_psicologo where crp=" + "'" + obj + "';" );
            rs = ps.executeQuery();
            if (rs.next()) {
                r = true; 
            }
        } finally {
            closeConnection();
        }
        System.out.println("CRP já cadastrado");
        return r;
    }
    
    public static boolean uniqueLogin(String obj) throws SQLException {
        boolean r = false;
        getConnection();
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = connection.prepareStatement("select nome from cad_psicologo where login=" + "'" + obj + "';" );
            ps.execute();
            rs = ps.executeQuery();
            if (rs.next()) {
                r = true; 
            } 
        } finally {
            closeConnection();
        }
        System.out.println("login já utilizado");
        return r;
    }
     
}
