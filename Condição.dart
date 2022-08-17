void main (){
  //Condição
//if / else if / else
  double nota = 8.0;
  
  if (nota <= 6.0){
    print("Exame! :(");
  } 
  else if(nota == 10.0){
    print("Parabéns !!! :()");
  }
  else {
    print("Aprovado! :) ");
  }
   
  bool aprovado = false;
  String info;
  /*
  if(aprovado){
    info = "Aprovado!!!";
  }
  else {
    info = "Reprovado...";
  }*/
  
  
  info = aprovado ? "Aprovado!!!" : "Reprovado...";
  print(info);
  //outro modo de utilizar condição
  //Operador Ternario

  double nota1 = 3;
  String mensagem = nota1 >= 5 ? 'Aprovado' : 'Reprovado';
  //se a nota for maior igual a 5 ela ira exibir aprovado se nao reprovado
  //? = se, : = reprovado
  print(mensagem);


  String linguagem = "C*";
  //Switch para valores limitados
  switch(linguagem){
    case "Dart":
      print("Dart");
    break;
    case "Java":
      print("Java");
    break;
    case "Swift":
      print("Swift");
    break;
    default:
      print("Outra!!!");
  }

}

