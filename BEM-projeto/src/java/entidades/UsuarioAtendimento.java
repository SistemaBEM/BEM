/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

/**
 *
 * @author Maryanne Alice
 */
public class UsuarioAtendimento {
    
    Usuario user = new Usuario();
    TipoAtendimento ta = new TipoAtendimento();
    ApplyProfissional ap = new ApplyProfissional();

    public UsuarioAtendimento() {
    }

    public ApplyProfissional getAp() {
        return ap;
    }

    public void setAp(ApplyProfissional ap) {
        this.ap = ap;
    }
    
    public Usuario getUser() {
        return user;
    }

    public void setUser(Usuario user) {
        this.user = user;
    }

    public TipoAtendimento getTa() {
        return ta;
    }

    public void setTa(TipoAtendimento ta) {
        this.ta = ta;
    }

    @Override
    public String toString() {
        return "UsuarioAtendimento{" + "user=" + user + ", ta=" + ta + ", ap=" + ap + '}';
    }
    
    
}
