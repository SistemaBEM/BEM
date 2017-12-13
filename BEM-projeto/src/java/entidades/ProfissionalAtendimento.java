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
public class ProfissionalAtendimento {
    
    Psicologo psic = new Psicologo();
    TipoAtendimento ta = new TipoAtendimento();

    public ProfissionalAtendimento() {
    }

    public Psicologo getPsic() {
        return psic;
    }

    public void setPsic(Psicologo psic) {
        this.psic = psic;
    }

    public TipoAtendimento getTa() {
        return ta;
    }

    public void setTa(TipoAtendimento ta) {
        this.ta = ta;
    }

    @Override
    public String toString() {
        return "VisualizarProfissionais{" + "psic=" + psic + ", ta=" + ta + '}';
    }
    
    
    
}
