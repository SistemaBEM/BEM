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
public class ApplyProfissional {
    
    private int nota, crp;

    public int getCrp() {
        return crp;
    }

    public void setCrp(int crp) {
        this.crp = crp;
    }
    private String comentario, login;

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public ApplyProfissional() {
    }

    public int getNota() {
        return nota;
    }

    public void setNota(int nota) {
        this.nota = nota;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    @Override
    public String toString() {
        return "ApplyProfissional{" + "nota=" + nota + ", comentario=" + comentario + '}';
    }
    
    
}
