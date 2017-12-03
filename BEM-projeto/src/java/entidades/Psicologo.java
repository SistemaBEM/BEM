/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.sql.Timestamp;

/**
 *
 * @author Maryanne Alice
 */
public class Psicologo {
        
    private String nome, rua, numero, bairro, cidade, EMail, login, senha, crp, contato, contatoOp, sexo; // data statusValidacao;
    private boolean statusValidacao;
    private Timestamp data; 
    
    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
 
    public Psicologo() {
    }

    public Timestamp getData() {
        return data;
    }

    public void setData(Timestamp data) {
        this.data = data;
    }
    
    
    public boolean isStatusValidacao() {
        return statusValidacao;
    }

    public void setStatusValidacao(boolean statusValidacao) {
        this.statusValidacao = statusValidacao;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }


    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEMail() {
        return EMail;
    }

    public void setEMail(String EMail) {
        this.EMail = EMail;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getCrp() {
        return crp;
    }

    public void setCrp(String crp) {
        this.crp = crp;
    }

    public String getContato() {
        return contato;
    }

    public void setContato(String contato) {
        this.contato = contato;
    }

    public String getContatoOp() {
        return contatoOp;
    }

    public void setContatoOp(String contatoOp) {
        this.contatoOp = contatoOp;
    }

    @Override
    public String toString() {
        return "Psicologo{" + "nome=" + nome + ", rua=" + rua + ", numero=" + numero + ", bairro=" + bairro + ", cidade=" + cidade + ", EMail=" + EMail + ", login=" + login + ", senha=" + senha + ", crp=" + crp + ", contato=" + contato + ", contatoOp=" + contatoOp + ", sexo=" + sexo + ", statusValidacao=" + statusValidacao + ", data=" + data + '}';
    }

    
    
}