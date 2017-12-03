/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fachadas;

import dao.AdministradorDAO;
import entidades.Administrador;
import entidades.MudarSenha;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

/**
 *
 * @author Maryanne Alice
 */
public class AdministradorFacede {
    
    public static boolean inserirAdmin(Administrador adm) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
        return AdministradorDAO.inserirAdmin(adm);
    }
    
    public static boolean verificacaoLogin(Administrador adm) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {
        return AdministradorDAO.verificacaoLogin(adm);
    }
    
    public static boolean mudarSenha(MudarSenha ms) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException {            
        return AdministradorDAO.mudarSenha(ms);
    }
    
    public static boolean uniqueLogin(String obj) throws SQLException {
        return AdministradorDAO.uniqueLogin(obj);
    }
    
    public static boolean uniqueCpf(String obj) throws SQLException {
        return AdministradorDAO.uniqueCpf(obj);
    }
    
}
