/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fachadas;

import dao.ApplyProfissionalDAO;
import entidades.ApplyProfissional;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

/**
 *
 * @author Maryanne Alice
 */
public class ApplyProfissionalFacede {
    
    public static boolean inserirApply(ApplyProfissional ap) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
        return ApplyProfissionalDAO.inserirApply(ap);
    }
    
}
