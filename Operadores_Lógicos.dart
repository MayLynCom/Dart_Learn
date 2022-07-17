void main (){
  double num1 = 10.0;
  //Operadores Lógicos

  //comparadores
  //---------------------
  // > maior
  // < menor
  // ==igual
  // >= maior igual
  // <= menor igual
  // != diferente
  
 // double num1 = 15.0; comentei pq tem 2 num1
  bool testeComp = (10 != num1);
  print("COMP $testeComp");
  
  //Tabela do OR = ||
  //------------
  // true true -> true
  // true false -> true
  // false true -> true
  // false false -> false
  
  bool testeOR = (false || false);
  print("OR $testeOR");
  
  //Tabela AND = &&
  //----------------
  // true true -> true
  // true false -> false
  // false true -> false
  // false false -> false
  
  bool testeAND = (false && true);
  print("AND $testeAND");
  
  bool complexa = (10 > 20) && ((30 < 20) || testeAND);
  print(complexa);
  
  print(!complexa);//!= inverte o valor, exemplo: print(complexa) é false com o ! print(!complexa) vira true



}