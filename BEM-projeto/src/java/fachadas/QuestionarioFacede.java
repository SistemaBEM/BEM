/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fachadas;

import dao.QuestionarioDAO;
import entidades.QuestionarioDASS21;
import java.sql.SQLException;

/**
 *
 * @author Maryanne Alice
 */
public class QuestionarioFacede {
    
    public static boolean adicionarResposta(QuestionarioDASS21 q) throws SQLException {
        return QuestionarioDAO.addResp(q);
    }
}
