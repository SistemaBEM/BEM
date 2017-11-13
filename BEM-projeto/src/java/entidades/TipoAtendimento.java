/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

/**
 *
 * @author marya
 */
public class TipoAtendimento {
    private int tipoAtendimentoID;

    public int getTipoAtendimentoID() {
        return tipoAtendimentoID;
    }

    public void setTipoAtendimentoID(int tipoAtendimentoID) {
        this.tipoAtendimentoID = tipoAtendimentoID;
    }
    
    private String crp;
    private boolean privado = false;
    private boolean amil = false; 
    private boolean unimedNatal = false;
    private boolean hapvida = false;

    public TipoAtendimento() {
    }

    public String getCrp() {
        return crp;
    }

    public void setCrp(String crp) {
        this.crp = crp;
    }

    public boolean isPrivado() {
        return privado;
    }

    public void setPrivado(boolean privado) {
        this.privado = privado;
    }

    public boolean isAmil() {
        return amil;
    }

    public void setAmil(boolean amil) {
        this.amil = amil;
    }

    public boolean isUnimedNatal() {
        return unimedNatal;
    }

    public void setUnimedNatal(boolean unimedNatal) {
        this.unimedNatal = unimedNatal;
    }

    public boolean isHapvida() {
        return hapvida;
    }

    public void setHapvida(boolean hapvida) {
        this.hapvida = hapvida;
    }

    @Override
    public String toString() {
        return "TipoAtendimento{" + "crp=" + crp + ", privado=" + privado + ", amil=" + amil + ", unimedNatal=" + unimedNatal + ", hapvida=" + hapvida + '}';
    }
    
}
