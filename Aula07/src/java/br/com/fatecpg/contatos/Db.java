/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.contatos;

import java.util.ArrayList;

/**
 *
 * @author ernandes
 */
public class Db {
    private static ArrayList<Contato> contatos;
    public static ArrayList<Contato> getContatos(){
        if(contatos == null){
            contatos= new ArrayList<>();
            contatos.add(new Contato("Fulano", "fulano@domain.com", "(13) 99991-0001"));
            contatos.add(new Contato("Beltrano", "beltrano@domain.com", "(13) 99991-0002"));
            contatos.add(new Contato("Cicrano", "cicrano@domain.com", "(13) 99991-0003"));
        }
        return contatos;    
    }
    public static void addContato (Contato contato){
        contatos.add(contato);
    }
    
    public static void updateContato (int index, Contato contato){
        contatos.set(index, contato);
    }
    
     public static void updateContato (int index){
        contatos.remove(index);
    }
            
}
