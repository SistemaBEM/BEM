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
public class FormaConsulta {
    
    private boolean privado = false;
    private boolean amil = false; 
    private boolean unimedNatal = false;
    private boolean hapvida = false;

    public FormaConsulta() {
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
      
}