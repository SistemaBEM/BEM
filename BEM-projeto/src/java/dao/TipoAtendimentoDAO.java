/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.TipoAtendimento;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import services.ConectarBanco;
import static services.ConectarBanco.closeConnection;
import static services.ConectarBanco.getConnection;

/**
 *
 * @author marya
 */
public class TipoAtendimentoDAO {
    
     private static Connection connection = ConectarBanco.getConnection();

    public static boolean inserirTA(TipoAtendimento tp) throws SQLException {
        boolean r = false;
        getConnection();
        PreparedStatement p;
        try {
             p = connection.prepareStatement("INSERT INTO tipoatendimento (crp, privado, amil, unimedNatal, hapvida)"
                    + " VALUES (?, ?, ?, ?, ?);");
            p.setString(1, tp.getCrp());
            p.setBoolean(2, tp.isPrivado());
            p.setBoolean(3, tp.isAmil());
            p.setBoolean(4, tp.isUnimedNatal());
            p.setBoolean(5, tp.isHapvida());
            p.execute(); // pai            
            r = true;
        } catch (SQLException e) {
            System.out.println("error: " + e);
        } finally {
            closeConnection();
        }
        return r;
    }
    
    public int tipoAtenID() throws SQLException{
        int value = 0;
        final String sql = "SELECT tipoAtendimentoID FROM tipoatendimento;";
        final PreparedStatement ps = connection.prepareStatement(sql);
        final ResultSet rs = ps.executeQuery();
        final ResultSetMetaData metaRS = rs.getMetaData();
        final int columnCount = metaRS.getColumnCount();
        while (rs.next()) {
            for (int i = 1; i <= columnCount; i++) {
                value = rs.getInt(i);
            }
        }
        return value;
    }
    
}
