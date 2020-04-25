/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Juan Rodriguez
 */
public class asd {
    
    public static void main (String []args){
        int valor = 2-1;
        int matriz[][] = new int[4][4];
        
        matriz[0][0] = ++valor;
        matriz[0][1] = ++valor;
        matriz[0][2] = ++valor;
        matriz[0][3] = ++valor;
        matriz[1][0] = ++valor;
        matriz[1][1] = ++valor;
        matriz[1][2] = ++valor;
        matriz[1][3] = ++valor;
        matriz[2][0] = ++valor;
        matriz[2][1] = ++valor;
        matriz[2][2] = ++valor;
        matriz[2][3] = ++valor;
        matriz[3][0] = ++valor;
        matriz[3][1] = ++valor;
        matriz[3][2] = ++valor;
        matriz[3][3] = ++valor;
        
        for (int x=0; x < 4; x++) {
  for (int y=0; y < 4; y++) {
    System.out.print (matriz[x][y]);
  }
            System.out.println("");
}
        
        
        
        
        
    }
    
}
