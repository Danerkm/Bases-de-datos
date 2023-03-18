/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lol;

/**
 *
 * @author USER
 */
import java.util.Scanner;
public class entrenaMultiplicacion {
    public static void main (String[] args){
        int i;
        int j;
 
        Scanner leer = new Scanner(System.in);
        System.out.println("Dame primer número");
        i=leer.nextInt();
 
        System.out.println("Dame segundo número");
        j=leer.nextInt();
 
        for (i=i; i<=j; i++){
 
            int r=i*j;
            System.out.println(i+"*"+j+"="+r);
        }
    }
 
}