/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author marya
 */
public class ConectarBanco {
    
    public static Connection connection = null;
    public PreparedStatement ps;
    public ResultSet rs;
    public String SQL;
    
    public static void main(String args[]){
        getConnection();
    }    
    
    public static Connection getConnection() {

            try{
                Class.forName("com.mysql.jdbc.Driver");
                System.out.println("driver encontrado");
            } catch (ClassNotFoundException e) {
                System.out.println("driver não encontrado" + e);
            }
            
            String url="jdbc:mysql://localhost:3306/bem-pds";
            String user="root";
            String password="jonathan1998";

            try {
                connection = (Connection) DriverManager.getConnection(url, user, password);
                System.out.println("Conectado com sucesso");
            } catch (SQLException e) {
                System.out.println("Algo deu errado na conexão" + e);
            }
         return connection;
    }
    
    public static Connection closeConnection() throws SQLException {
        if(connection != null){
            connection.close();
        }
        return connection;
    }
    
    public static void closeConn(Connection conn, ResultSet rs, PreparedStatement pstmt, Statement stmt) {
        if (rs != null) {
            try {
                System.out.println(" ResultSet [CLOSE] ");
                rs.close();
            } catch (SQLException e) { }
        }
        if (stmt != null) {
            try {
                System.out.println(" Statement [CLOSE] ");
                stmt.close();
            } catch (SQLException e) { }
        }
         if (pstmt != null) {
            try {
                System.out.println(" PreparedStatement [CLOSE] ");
                pstmt.close();
            } catch (SQLException e) { }
        }
        if (conn != null) {
            try {
                System.out.println(" Connection [CLOSE] ");
                conn.close();
            } catch (SQLException e) { }
        }
    }

}