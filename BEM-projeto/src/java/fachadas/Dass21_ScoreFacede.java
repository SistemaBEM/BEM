/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fachadas;

import dao.Dass21_ScoreDAO;
import entidades.Dass21_Score;
import java.sql.SQLException;

/**
 *
 * @author Maryanne Alice
 */
public class Dass21_ScoreFacede {
    
    public static boolean inserirScore(Dass21_Score ds) throws SQLException {
        return Dass21_ScoreDAO.inserirScore(ds);
    }
    
}
