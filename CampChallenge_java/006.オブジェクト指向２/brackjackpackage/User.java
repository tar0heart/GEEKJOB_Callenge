package brackjackpackage;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import brackjackpackage.Human;
import java.util.ArrayList;
/**
 *
 * @author tar0
 */
class User extends Human{
public int open(){
    int k=0;
        for(int j=0; j<myCards.size(); j++){
            k=k+myCards.get(j);
        }
        return k;
}
public void setCard(ArrayList<Integer>list){
        for(int q=0; q<list.size(); q++){ 
        myCards.add(list.get(q));
        }
}
public boolean checkSum(){
    
        boolean v = false;
    if(open()>14){
         v = false;
    }else if(open()<15){
        v = true;
    }
        return v;
}
}
    

