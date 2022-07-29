/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Enums;

/**
 *
 * @author sala19a
 */
public enum Tipo {

    P('P', "Premium"),
    C('C', "Comum");

    private Character initial;
    private String descricao;

    private Tipo(Character initial, String descricao) {
        this.initial = initial;
        this.descricao = descricao;
    }

    public String getDescricao() {
        return this.descricao;
    }
    
    public Character getInitial(){
        return this.initial;
    }
    
    public static Tipo toEnum(Character initial){
        if(initial == null)
            return null;
                    
        for(Tipo obj : Tipo.values()){
            if(initial.equals(obj.getInitial())){
                return obj;
            }
        }
        
        throw new IllegalArgumentException("Tipo inválido");
    }

}
