/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static entidades.ConvertToTimeStamp.ConvertToTimeStamp;
import static entidades.Cryptography.Cryptography;
import entidades.MudarSenha;
import entidades.Psicologo;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import static services.ConectarBanco.closeConn;
import static services.ConectarBanco.getConnection;

/**
 *
 * @author Maryanne Alice
 */
public class PsicologoDAO {
    
    
    public static boolean inserirPS(Psicologo psic) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
        boolean r = false;
        Connection connection = getConnection();
        TipoAtendimentoDAO dao = new TipoAtendimentoDAO();
        int tpID = dao.tipoAtenID();
        PreparedStatement ps = null;
        try {
             ps = connection.prepareStatement ("INSERT INTO cad_psicologo(crp, nome, rua, numero, bairro, cidade, "
                    + "telefoneComercial, telefoneOutro, email, login, senha, forma_atendimento, sexo) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?);" );
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
            ps.setString(11, Cryptography(psic.getSenha()));
            ps.setInt(12, tpID);
            ps.setString(13, psic.getSexo());
            ps.execute(); // filho
            r = true;
        } catch (SQLException e) {
            System.out.println("error: " + e);
        } finally {
            closeConn(connection, null, ps, null);
        }
        return r;
    }
    
    public static boolean solicitacaoCadastral(Psicologo psic) throws SQLException {
        boolean r = false;
        Connection connection = getConnection();
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
            closeConn(connection, null, ps, null);
        }
        return r;
    }
    
    public static boolean verificacaoLogin(Psicologo psic) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {       
          Connection connection = getConnection();
          boolean r = false;
          PreparedStatement ps = null;
          ResultSet rs = null;
            try
            {
                ps = connection.prepareStatement("select * from cad_psicologo where login = ? and senha = ?;");
                ps.setString(1, psic.getLogin());
                ps.setString(2, Cryptography(psic.getSenha()));
                rs = ps.executeQuery();
                if (rs.next()) {
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
            "update cad_psicologo set senha = '" + Cryptography(ms.getSenha()) + "' where crp = '" + ms.getValidador() + "' ;" );
            ps.execute();
            r = true; 
        } catch (SQLException e) {
            System.out.println("error: " + e);
        } finally {
            closeConn(connection, null, ps, null);
        }
        return r;
    }
    
    public static boolean uniqueCRP(String obj) throws SQLException {
        boolean r = false;
        Connection connection = getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = connection.prepareStatement("select nome from cad_psicologo where crp=" + "'" + obj + "';" );
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
            ps = connection.prepareStatement("select nome from cad_psicologo where login=" + "'" + obj + "';" );
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
    
    public static String SexoPsic(Psicologo psic) throws NoSuchAlgorithmException, UnsupportedEncodingException, SQLException {
        Connection connection = getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
            try
            {
                ps = connection.prepareStatement("select sexo from cad_psicologo where login = ? and senha = ?;");
                ps.setString(1, psic.getLogin());
                ps.setString(2, Cryptography(psic.getSenha()));
                rs = ps.executeQuery();
                if (rs.next()) {
                    psic = new Psicologo();
                    psic.setSexo(rs.getString("sexo"));
                }
            } catch (SQLException e) {
                System.out.println("error: " + e);
            } finally {
                closeConn(connection, rs, ps, null);
            }
        return psic.getSexo();
    }    
        
    // Astrogilda Caroline
    
    public static Psicologo Login(Psicologo psic) throws NoSuchAlgorithmException, UnsupportedEncodingException, SQLException
    {
        Connection connection = getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
            try
            {
                ps = connection.prepareStatement("select * from cad_psicologo where login = ? and senha = ?;");
                ps.setString(1, psic.getLogin());
                ps.setString(2, Cryptography(psic.getSenha()));
                rs = ps.executeQuery();
                if (rs.next()) {
                    psic = new Psicologo();
                    psic.setLogin(psic.getLogin());
                    psic.setNome(rs.getString("nome"));
                    psic.setCrp(rs.getString("crp"));
                    psic.setRua(rs.getString("rua"));
                    psic.setNumero(rs.getString("numero"));
                    psic.setBairro(rs.getString("bairro"));
                    psic.setCidade(rs.getString("cidade"));
                    psic.setContato(rs.getString("telefoneComercial"));
                    psic.setEMail(rs.getString("email")); 
                }
            } catch (SQLException e) {
                System.out.println("error: " + e);
            } finally {
                closeConn(connection, rs, ps, null);
            }
        return psic;
    }
     
    public static Psicologo Update(Psicologo prof) throws NoSuchAlgorithmException, UnsupportedEncodingException, SQLException
    {
        System.out.println(prof);
        Connection connection = getConnection();
        PreparedStatement ps = null;
        int rs;
        Psicologo psic = null;
            try
            {
                ps = connection.prepareStatement("update cad_psicologo set nome = ?, rua = ?, numero = ?, bairro = ?, cidade = ?, "
                    + "telefoneComercial = ? where login = ?;");
                
                ps.setString(1, prof.getNome());
                ps.setString(2, prof.getRua());
                ps.setString(3, prof.getNumero());
                ps.setString(4, prof.getBairro());
                ps.setString(5, prof.getCidade());
                ps.setString(6, prof.getContato());
                ps.setString(7, prof.getLogin());
                rs = ps.executeUpdate();
                
                if(rs > 0){
                    System.out.println("sucesso");
                    psic = prof;
                }
                
            } catch (SQLException e) {
                System.out.println("error: " + e);
            } finally {
                closeConn(connection, null, ps, null);
            }
        return psic;
    }
    
    public static Collection<Psicologo> Listar() throws ParseException {
        List<Psicologo> lista = new ArrayList();
        Connection connection = getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            ps = connection.prepareStatement("select crp, nome, dtSolicitacao, statusValidacao from validacao_cadastro;" );
            rs = ps.executeQuery();
            while (rs.next())
            {
                Psicologo p = new Psicologo();
                p.setCrp(rs.getString("crp"));
                p.setNome(rs.getString("nome"));
                p.setData((rs.getTimestamp("dtSolicitacao")));
                p.setStatusValidacao(rs.getBoolean("statusValidacao"));
                lista.add(p);

            }
        } catch (SQLException ex) {
            Logger.getLogger(PsicologoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            closeConn(connection, rs, ps, null);
        }
        System.out.println(lista);
        return lista;
    }
    
    public static boolean Validar(Psicologo prof) throws NoSuchAlgorithmException, UnsupportedEncodingException, SQLException {
        System.out.println(prof);
        boolean r = false;
        Connection connection = getConnection();
        PreparedStatement ps = null;
        int rs;
            try
            {
                ps = connection.prepareStatement("update validacao_cadastro set statusValidacao = ? where crp = ?;");
                
                ps.setBoolean(1, prof.isStatusValidacao());
                ps.setString(2, prof.getCrp());
                rs = ps.executeUpdate();
                if(rs > 0){
                    r = true;
                }
                
            } catch (SQLException e) {
                System.out.println("error: " + e);
            } finally {
                closeConn(connection, null, ps, null);
            }
        return r;
    }
    
    
}