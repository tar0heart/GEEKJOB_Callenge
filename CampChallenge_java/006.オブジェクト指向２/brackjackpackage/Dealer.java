package brackjackpackage;


import java.util.ArrayList;
import java.util.Random;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//public void cards(ArrayList gets){
/**
 *
 * @author tar0
 */
class Dealer extends Human{
    ArrayList<Integer>cards=new ArrayList<>();
    Dealer(){
      
for(int a=0; a<4; a++){
    for(int i=2; i<11; i++){
        cards.add(i);
    }
    for(int b=0; b<3; b++){
        cards.add(10);
    }
    cards.add(11);
}
    }
    public ArrayList deal(){
   ArrayList<Integer>list=new ArrayList<>();
    Random two = new Random();
   int twocar=two.nextInt(cards.size());
   cards.get(twocar);
   cards.remove(twocar);
   int twocars=two.nextInt(cards.size());
   cards.get(twocars);
   cards.remove(twocars); 
   list.add(cards.get(twocar));
   list.add(cards.get(twocars));
   return list;
}
public ArrayList hit(){
    ArrayList<Integer>list=new ArrayList<>();
    Random one = new Random();
    int onecar = one.nextInt(cards.size());
    cards.get(onecar);
    cards.remove(onecar);
    list.add(cards.get(onecar));
    return list;
}
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
    if(open()>16){
         v = false;
    }else if(open()<17){
        v = true;
    }
        return v;
    }
  


    
}
