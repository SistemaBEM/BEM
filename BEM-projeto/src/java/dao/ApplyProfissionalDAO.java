/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static dao.UsuarioDAO.usuarioID;
import entidades.ApplyProfissional;
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
        Connection connection = getConnection();       
        PreparedStatement ps = null;
        try {
             ps = connection.prepareStatement ("INSERT INTO applyprofissional(crp, usuarioID, avaliacao, comentario) VALUES (?,?,?,?);" );
            ps.setInt(1, ap.getCrp());
            ps.setInt(2, UsuarioDAO.usuarioID(ap.getLogin()));
            ps.setInt(3, ap.getNota());
            ps.setString(4, ap.getComentario());
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
        Connection connection = getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            ps = connection.prepareStatement(
                    "select ap.crp, p.nome, ap.usuarioID, ap.avaliacao, ap.comentario "
                            + "from applyprofissional ap, cad_psicologo p "
                            + "where ap.crp = p.crp and usuarioID = ?;" );
            
            ps.setInt(1, UsuarioDAO.usuarioID(login));
            if (UsuarioDAO.usuarioID(login)!= 0) {
                System.out.println("dao.ApplyProfissionalDAO.Listar() -> TÁ RECEBENDO O LOGIN, <BR/> ID:"
                        + UsuarioDAO.usuarioID(login));
            } else {
                System.out.println("dao.ApplyProfissionalDAO.Listar() -> TÁ NÃO RECEBENDO O LOGIN, <BR/> ID:"
                        + UsuarioDAO.usuarioID(login));
            }
            rs = ps.executeQuery();
            while (rs.next())
            {
                ApplyProfissional a = new ApplyProfissional();
                a.setCrp(rs.getInt("crp"));
                a.setNomeProf(rs.getString("nome"));
                a.setLogin(rs.getString("usuarioID"));
                a.setNota(rs.getInt("avaliacao"));
                a.setComentario(rs.getString("comentario"));
                lista.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PsicologoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            closeConn(connection, rs, ps, null);
        }
        System.out.println(lista);
        return lista;
    }
    
}
