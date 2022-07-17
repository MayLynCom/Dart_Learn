//Função
//função primeiro espeficica o tipo que ela retorna, se nao retornar nada é void 
//se retornar um inteiro espeficicar int, se retornar double mesma coisa etc...
//logo em seguida você da o nome da função e abre e fecha parenteses e chaves.
//dentro da chaves coloca todo o codigo da função que você quer reutilizar em algum lugar
//os parenteses é onde você espeficica todos os parametros que você quer receber
void main() {//void = vazio, ou seja, não tem significado
  //saudacoes();se n tivesse nada dentro do parenteses
  saudacoes("Maycon", mostrarAgora: false, sep:"k");//vai exibir tudo que tem dentro da função saudacoes, no caso uma string nome 
  saudacoes("Maycon Lyncon");//exibe novamente com um parametro diferente
  
 
  
  /*String a = agora();
  print(a);
  //ou
  print(agora());
  */
}

//você cria uma função quando não quer reencrever varias vezes a mesma coisa
//dentro do parenteses especificamos uma varialvel que pode ser alterada
//parametro dentro de colchetes[] ele vira opcional, não é obrigado a passar valor porem ele deve ter um valor padrão
//se por padrão ele é true ele sempre sera mostrado(por causa do if) caso contrario você especifique q ele é falso
//em colchetes [] tem que especificar parametro por parametro c quiser modificar o ultimo por exemplo
//em chaves {} n tem essa necessidade, só vai ter que especificar com o nome do parametro + :
//e se eu quiser que o parametro não tenha valor vou ter que utilizar o null safety
void saudacoes(String nome, {bool mostrarAgora = true, String sep = "-"}){ //saudacoes é o nome da função // void significa nenhum retorno
  print(sep * 20);
  print("Saudadções do $nome");//exibimos a variavel de acordo com a informação que esta dentro de void main
  print("Seja Bem Vindo(a)!");
  if(mostrarAgora){
    print("Agora: ${agora()}");//para printar uma outra função entre aspas
  }
  
}

String agora(){//em vez de ser void é String pq tem um retorno String
  DateTime agora = DateTime.now();//Data e hora de agr
  return agora.toString();//retorno String
}
