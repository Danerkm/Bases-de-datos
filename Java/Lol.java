/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lol;

import java.util.Scanner;

/**
 *
 * @author USER
 */
public class Lol {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int n;
        System.out.println("Ingrese el primer numero: ");
        n = entrada.nextInt();
        if (n > 5) {
            System.out.println("verdadero");
        } else if (n == 0) {
            System.out.println("numero nulo");

        } else {
            System.out.println("falso");

        }

    }
}
