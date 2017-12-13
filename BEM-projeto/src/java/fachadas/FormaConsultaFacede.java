/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fachadas;

import dao.FormaConsultaDAO;
import entidades.FormaConsulta;
import java.sql.SQLException;

/**
 *
 * @author Maryanne Alice
 */
public class FormaConsultaFacede {
    
    public static boolean inserirFC(FormaConsulta fc) throws SQLException {
        return FormaConsultaDAO.inserirFC(fc);
    }
    
}
