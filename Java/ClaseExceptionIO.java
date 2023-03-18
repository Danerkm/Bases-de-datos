/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package programacion2;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/**
 *
 * @ Santiago 3/05/2021
 */
public class ClaseExceptionIO {
    public static void main(String [] args) throws FileNotFoundException, IOException{
        BufferedReader bf = new BufferedReader(new FileReader("C:\\Users\\USER\\OneDrive\\Escritorio\\universidad\\calculo\\Texto15.txt"));
        String linea;
        while((linea=bf.readLine())!=null) {
        System.out.println(linea);
        }
    }
    
}
