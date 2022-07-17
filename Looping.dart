void main (){
  
  //looping
  //for para quantidade definida
  for(int i = 100; i >= 10; i-= 5){
    print(i);
  }
  
  
  //while quantidade indefinida
  int j = 0;
  while (j < 10){ //while verifica dps executa
    print(j);
    j++;
  }
  
  int k = 0;
  do{ //do / while executa primeiro depois verifica
    print(k);
    k++;
  }
  while(k < 10);
}