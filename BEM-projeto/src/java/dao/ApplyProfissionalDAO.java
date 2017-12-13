/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.ApplyProfissional;
import entidades.TipoAtendimento;
import entidades.Usuario;
import entidades.UsuarioAtendimento;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
public class ApplyProfissionalDAO {
    
    public static boolean inserirApply(ApplyProfissional ap) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
        boolean r = false;
        
        FormaConsultaDAO dao = new FormaConsultaDAO();
        int fcID = dao.formaConsultaID();
        
        Connection connection = getConnection();       
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement ("INSERT INTO applyprofissional(crp, usuarioID, avaliacao, comentario, formaConsultaID) VALUES (?,?,?,?,?);" );
            ps.setInt(1, ap.getCrp());
            ps.setInt(2, UsuarioDAO.usuarioID(ap.getLogin()));
            ps.setInt(3, ap.getNota());
            ps.setString(4, ap.getComentario());
            ps.setInt(5, fcID);
            ps.execute(); // filho
            r = true;
        } catch (SQLException e) {
            System.out.println("error: " + e);
        } finally {
            closeConn(connection, null, ps, null);
        }
        return r;
    }
    
    public static Collection<ApplyProfissional> Listar(String login) throws ParseException, NoSuchAlgorithmException, UnsupportedEncodingException {
        List<ApplyProfissional> lista = new ArrayList();
        ApplyProfissional a = new ApplyProfissional();
        Connection connection = getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            ps = connection.prepareStatement(
                    "select ap.crp, p.nome, ap.usuarioID, ap.avaliacao, ap.comentario, ap.statusValidacaoApply "
                            + "from applyprofissional ap"
                            + " inner join cad_psicologo p "
                            + "where ap.crp = p.crp and usuarioID = ?;" ); 
            
            ps.setInt(1, UsuarioDAO.usuarioID(login));

            rs = ps.executeQuery();
            while (rs.next())
            {
                
                a.setCrp(rs.getInt("ap.crp"));
                a.setNomeProf(rs.getString("p.nome"));
                a.setLogin(rs.getString("ap.usuarioID"));
                a.setNota(rs.getInt("ap.avaliacao"));
                a.setComentario(rs.getString("ap.comentario"));
                a.setStatusValidacaoApply(rs.getBoolean("ap.statusValidacaoApply"));
                
                lista.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ApplyProfissionalDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            closeConn(connection, rs, ps, null);
        }
        
        return lista;
    }
    
    public static boolean statusValidacaoApply(String login) throws NoSuchAlgorithmException, UnsupportedEncodingException, SQLException {
        Connection connection = getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        ApplyProfissional ap = new ApplyProfissional();
            try
            {
                ps = connection.prepareStatement("select statusValidacaoApply from applyprofissional where login = ?");
                ps.setString(1, login);
                rs = ps.executeQuery();
                if (rs.next()) {
                    ap.setStatusValidacaoApply(rs.getBoolean("statusValidacaoApply"));
                }
            } catch (SQLException e) {
                System.out.println("error: " + e);
            } finally {
                closeConn(connection, rs, ps, null);
            }
        return ap.isStatusValidacaoApply();
    }
    
    public static Collection<UsuarioAtendimento> listarParaPsicologo() {
        List<UsuarioAtendimento> lista = new ArrayList();
        Connection connection = getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            ps = connection.prepareStatement(
                "select u.nome, u.email, ta.privado, ta.amil, ta.unimed, ta.hapvida, ap.statusValidacaoApply " +
                "from cad_usuario u " +
                "inner join applyprofissional ap " +
                "inner join formaconsulta ta " +
                "where u.usuarioID = ap.usuarioID and ta.formaconsultaID = ap.formaconsultaID;"
            );
            rs = ps.executeQuery();
            while (rs.next())
            {
                Usuario u = new Usuario();
                u.setNome_completo(rs.getString("u.nome"));
                u.setEmail(rs.getString("u.email"));
                
                ApplyProfissional ap = new ApplyProfissional();
                ap.setStatusValidacaoApply(rs.getBoolean("ap.statusValidacaoApply"));
                
                TipoAtendimento ta = new TipoAtendimento();
                ta.setPrivado(rs.getBoolean("ta.privado"));
                ta.setAmil(rs.getBoolean("ta.amil"));
                ta.setHapvida(rs.getBoolean("ta.hapvida"));
                ta.setUnimedNatal(rs.getBoolean("ta.unimed"));
                
                UsuarioAtendimento ua = new UsuarioAtendimento();
                ua.setUser(u);
                ua.setTa(ta);
                ua.setAp(ap);
                lista.add(ua);
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(PsicologoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            closeConn(connection, rs, ps, null);
        }
        System.out.println(lista);
        
        return lista;
    }

    public static boolean Validar(ApplyProfissional ap) {
        boolean r = false;
        Connection connection = getConnection();
        PreparedStatement ps = null;
        int rs;
            try
            {
                ps = connection.prepareStatement
        (" update applyprofissional ap " +
            " inner join cad_usuario u " +
            " set statusValidacaoApply = ? " +
            " where u.usuarioID = ap.usuarioID and u.nome = ? and u.email = ?;");
                
                ps.setBoolean(1, ap.isStatusValidacaoApply());
                ps.setString(2, ap.getNomeCli());
                ps.setString(3, ap.getEmail());
                
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