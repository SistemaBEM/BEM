/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import entidades.Dass21_Score;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import static services.ConectarBanco.closeConn;
import static services.ConectarBanco.getConnection;

/**
 *
 * @author Maryanne Alice
 */
public class Dass21_ScoreDAO {
    
    public static boolean inserirScore(Dass21_Score ds) throws SQLException {
        boolean r = false;
        QuestionarioDAO qDAO = new QuestionarioDAO();
        int qDAOID = qDAO.questionarioID();
        Connection connection = getConnection();
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement ("INSERT INTO dass21_score(questionarioID, scoreDepression, scoreAnxiety, scoreStress)"
                    + " VALUES (?,?, ?, ?);" );
            ps.setInt(1, qDAOID);
            ps.setInt(2, ds.getScoreDepression());
            ps.setInt(3, ds.getScoreAnxiety());
            ps.setInt(4, ds.getScoreStress());
            ps.execute(); 
            r = true;
        } catch (SQLException e) {
            System.out.println("error: " + e);
        } finally {
            closeConn(connection, null, ps, null);
        }
        return r;
    }
            
}