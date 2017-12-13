/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entidades.ProfissionalAtendimento;
import entidades.Psicologo;
import entidades.TipoAtendimento;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.SQLException;
import static services.ConectarBanco.closeConn;
import static services.ConectarBanco.getConnection;


/**
 *
 * @author Maryanne Alice
 */
public class ProfissionalAtendimentoDAO {
    
    public static Collection<ProfissionalAtendimento> Listar() {
        List<ProfissionalAtendimento> lista = new ArrayList();
        Connection connection = getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            ps = connection.prepareStatement
            (" select psicologo.crp, psicologo.nome, psicologo.telefoneComercial, psicologo.email, psicologo.sexo, " +
            " ta.privado, ta.unimedNatal, ta.hapvida, ta.amil " +
            " from cad_psicologo psicologo " +
            " inner join validacao_cadastro a " +
            " inner join tipoatendimento ta  " +
            " where a.crp = psicologo.crp and psicologo.forma_atendimento = ta.tipoAtendimentoID;  ");
            
            rs = ps.executeQuery();
            while (rs.next())
            {
                Psicologo p = new Psicologo();
                TipoAtendimento ta = new TipoAtendimento();
                
                p.setCrp(rs.getString("psicologo.crp"));
                p.setNome(rs.getString("psicologo.nome"));
                p.setContato(rs.getString("psicologo.telefoneComercial"));
                p.setEMail(rs.getString("psicologo.email"));
                p.setSexo(rs.getString("psicologo.sexo"));
                
                ta.setPrivado(rs.getBoolean("ta.privado"));
                ta.setAmil(rs.getBoolean("ta.amil"));
                ta.setHapvida(rs.getBoolean("ta.hapvida"));
                ta.setUnimedNatal(rs.getBoolean("ta.unimedNatal"));
                
                ProfissionalAtendimento pa = new ProfissionalAtendimento();
                pa.setPsic(p);
                pa.setTa(ta);
                lista.add(pa);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PsicologoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            closeConn(connection, rs, ps, null);
        }
        return lista;
    }
    
    
}
