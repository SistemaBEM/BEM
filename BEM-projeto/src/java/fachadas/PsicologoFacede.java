/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fachadas;

import dao.PsicologoDAO;
import entidades.MudarSenha;
import entidades.Psicologo;
import java.sql.SQLException;

/**
 *
 * @author marya
 */
public class PsicologoFacede {
    
    public static boolean inserirPS(Psicologo psic) throws SQLException {
        return PsicologoDAO.inserirPS(psic);
    }
    public static boolean verificacaoLogin(Psicologo psic) throws SQLException {
        return PsicologoDAO.verificacaoLogin(psic);
    }
    public static boolean mudarSenha(MudarSenha ms) throws SQLException {
        return PsicologoDAO.mudarSenha(ms);
    }
    public static boolean uniqueCRP(String obj) throws SQLException {
        return PsicologoDAO.uniqueCRP(obj);
    }
    public static boolean uniqueLogin(String obj) throws SQLException {
        return PsicologoDAO.uniqueLogin(obj);
    }
}
