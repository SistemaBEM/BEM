/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fachadas;

import entidades.TipoAtendimento;
import dao.TipoAtendimentoDAO;
import java.sql.SQLException;

/**
 *
 * @author marya
 */
public class TipoAtendimentoFacede {
    
    public static boolean inserirTA(TipoAtendimento ta) throws SQLException {
        return TipoAtendimentoDAO.inserirTA(ta);
    }
    
}
