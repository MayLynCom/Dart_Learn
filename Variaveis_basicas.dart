void main() {

  //comentário
  //implementando uma lojinha
  //Variáveis Básicas
  String nomeLoja = "Lojinha do Maycon"; //string é tipo texto
  int bananas; //int  = numero inteiro
  double preco = 10.5; //double = numeros reais
  bool aindaTem = true;//bool = booleano = true or false
  
  bananas = 7; // pode declarar depois
  
  print("O nome da Lojinha é: $nomeLoja ");//print = mostrar na tela
  print("A $nomeLoja tem $bananas bananas ");//print com variavel, adicionar "$"
  
  //var sem definir variavel, o primeiro tipo que entrar vai continuar
  Exemplo : var teste = 1; 
  print(teste);
  
  dynamic teste2 = 1; // dynamic = variavel que pode ser alterada
  print(teste2);
  teste2 = "hahahaha";//a variavel era int se tornou string
  print(teste2);

  num numero = 1.4;//num é uma variavel que pode ser int(inteiro) ou double(real)
  numero = 2;//quando você precisa dos 2 tipos de numeros que podem ser utilizados, inteiro ou real
}