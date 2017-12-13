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
    private String comentario, login, email, nomeProf, nomeCli;
    private boolean statusValidacaoApply;

    public boolean isStatusValidacaoApply() {
        return statusValidacaoApply;
    }

    public void setStatusValidacaoApply(boolean statusValidacaoApply) {
        this.statusValidacaoApply = statusValidacaoApply;
    }
   

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNomeCli() {
        return nomeCli;
    }

    public void setNomeCli(String nomeCli) {
        this.nomeCli = nomeCli;
    }
    
    public int getCrp() {
        return crp;
    }

    public void setCrp(int crp) {
        this.crp = crp;
    }
    

    public String getNomeProf() {
        return nomeProf;
    }

    public void setNomeProf(String nomeProf) {
        this.nomeProf = nomeProf;
    }

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
        return "ApplyProfissional{" + "nota=" + nota + ", crp=" + crp + ", comentario=" + comentario + ", login=" + login + ", email=" + email + ", nomeProf=" + nomeProf + ", nomeCli=" + nomeCli + ", statusValidacaoApply=" + statusValidacaoApply + '}';
    }

    
    
}
