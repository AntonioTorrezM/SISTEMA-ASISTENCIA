package Logica;

import java.awt.EventQueue;
import java.lang.reflect.InvocationTargetException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JProgressBar;

public class HiloPasos extends Thread{
    JProgressBar barra;
    private static  int retraso=300;

    public HiloPasos(JProgressBar barra) {
        this.barra = barra;
    }
    
    @Override
    public void run() {
       int minimo=barra.getMinimum();
       int maximo=barra.getMaximum();
       
       Runnable ejecutor=new Runnable() {

           @Override
           public void run() {
               int  valoractual=barra.getValue();
               barra.setValue(valoractual+1);  
           }
       };
       for(int i=minimo;i<maximo;i++)
       {
           try {
               EventQueue.invokeAndWait(ejecutor);
                Thread.sleep(retraso);
           } catch (InterruptedException ex) {
               
           } catch (InvocationTargetException ex) {  
           }   
       }   
    }
}
   
    
    
    

