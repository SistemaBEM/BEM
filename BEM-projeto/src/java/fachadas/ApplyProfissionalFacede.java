/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fachadas;

import dao.ApplyProfissionalDAO;
import entidades.ApplyProfissional;
import entidades.UsuarioAtendimento;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.Collection;

/**
 *
 * @author Maryanne Alice
 */
public class ApplyProfissionalFacede {
    
    public static boolean inserirApply(ApplyProfissional ap) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
        return ApplyProfissionalDAO.inserirApply(ap);
    }
    
    public static Collection<ApplyProfissional> Listar(String login) throws ParseException, NoSuchAlgorithmException, UnsupportedEncodingException {
        return ApplyProfissionalDAO.Listar(login);
    }
    
    public static boolean statusValidacaoApply(String login) throws NoSuchAlgorithmException, UnsupportedEncodingException, SQLException {
        return ApplyProfissionalDAO.statusValidacaoApply(login);
    }
    
    public static Collection<UsuarioAtendimento> listarParaPsicologo() {
        return ApplyProfissionalDAO.listarParaPsicologo();
    }
    
    public static boolean Validar(ApplyProfissional ap) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
        return ApplyProfissionalDAO.Validar(ap);
    }
    
    
}
