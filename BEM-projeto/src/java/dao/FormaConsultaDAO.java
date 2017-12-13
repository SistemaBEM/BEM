/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.FormaConsulta;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import static services.ConectarBanco.closeConn;
import static services.ConectarBanco.getConnection;

/**
 *
 * @author Maryanne Alice
 */
public class FormaConsultaDAO {
    
    public static boolean inserirFC(FormaConsulta fc) throws SQLException {
        boolean r = false;
        Connection connection = getConnection();
        PreparedStatement p = null;
        try {
             p = connection.prepareStatement("INSERT INTO formaconsulta (privado, amil, unimed, hapvida)"
                    + " VALUES (?, ?, ?, ?);");
            p.setBoolean(1, fc.isPrivado());
            p.setBoolean(2, fc.isAmil());
            p.setBoolean(3, fc.isUnimedNatal());
            p.setBoolean(4, fc.isHapvida());
            p.execute(); // pai            
            r = true;
        } catch (SQLException e) {
            System.out.println("error: " + e);
        } finally {
            closeConn(connection, null, p, null);
        }
        return r;
    }
    
    public int formaConsultaID() throws SQLException {
        Connection connection = getConnection();
        int value = 0;
            String sql = "SELECT formaconsultaID FROM formaconsulta;";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            ResultSetMetaData metaRS = rs.getMetaData();
        int columnCount = metaRS.getColumnCount();
        while (rs.next()) {
            for (int i = 1; i <= columnCount; i++) {
                value = rs.getInt(i);
            }
        }
        return value;
    }
    
}
