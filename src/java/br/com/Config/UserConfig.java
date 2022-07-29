package br.com.Config;


import br.com.DTO.ClienteDTO;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author sala19a
 */
public class UserConfig {
    private static ClienteDTO cliente = new ClienteDTO();
    
    public static void setCliente(ClienteDTO cliente){
        UserConfig.cliente = cliente;
    }
    
    public static ClienteDTO getCliente(){
        return UserConfig.cliente;
    }
    
}
