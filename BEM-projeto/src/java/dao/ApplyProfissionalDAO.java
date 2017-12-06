/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.ApplyProfissional;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
    
}
