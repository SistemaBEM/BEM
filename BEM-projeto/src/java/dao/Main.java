/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.Administrador;
import static entidades.Cryptography.Cryptography;
import entidades.Psicologo;
import entidades.Usuario;
import fachadas.PsicologoFacede;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Laut
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException, NoSuchAlgorithmException, UnsupportedEncodingException, ParseException {
           /* Administrador a = new Administrador();
            a.setCpf("00000000000");
            a.setNome("Usuário Inicial");
            a.setLogin("usuario");
            a.setSenha("admin123"); 
            AdministradorDAO.inserirAdmin(a); 
            Psicologo p = new Psicologo();
            p.setCrp("1230");
            p.setStatusValidacao(false);
            PsicologoDAO.Validar(p); */
           
        //  UsuarioDAO.usuarioID("loginsenha");
           
        //   ApplyProfissionalDAO.Listar("loginsenha");
        
       // Psicologo p = new Psicologo();
       // p.setLogin("manoel");
        
        ApplyProfissionalDAO.listarParaPsicologo();
      
        
        
           
           
    }
    
}
