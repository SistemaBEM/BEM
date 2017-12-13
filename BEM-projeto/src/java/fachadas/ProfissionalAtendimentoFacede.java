/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fachadas;

import dao.ProfissionalAtendimentoDAO;
import entidades.ProfissionalAtendimento;
import java.util.Collection;

/**
 *
 * @author Maryanne Alice
 */
public class ProfissionalAtendimentoFacede {
    
    public static Collection<ProfissionalAtendimento> Listar() {
        return ProfissionalAtendimentoDAO.Listar();
    }
    
}
