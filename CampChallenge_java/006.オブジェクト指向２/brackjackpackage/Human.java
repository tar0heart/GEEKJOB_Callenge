package brackjackpackage;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.util.ArrayList;
/**
 *
 * @author tar0
 */
public abstract class Human {
    abstract public int open();
    abstract public void setCard(ArrayList<Integer>list);
    abstract public boolean checkSum();
    ArrayList<Integer>myCards=new ArrayList<>();
   
}



