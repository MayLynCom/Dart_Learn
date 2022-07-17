
//Classe, Objeto e Atributo
void main19 (){
  //pessoa 1 e 2 são objetos
  //cada pessoa tem seu valor de atributo
  Pessoa pessoa1 = Pessoa();
  pessoa1.nome = "Maycon";
  pessoa1.idade = 21;
  print(pessoa1.nome);
  print(pessoa1.idade);
  
  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = "Lyncon";
  pessoa2.idade = 22;
  pessoa2.casado = true;
  print(pessoa2.nome);
  print(pessoa2.idade);
  print(pessoa2.casado);
  
}

//classe
class Pessoa {
  //nome e idade são atributos
  String? nome;
  int? idade;
  bool casado = false;
  
}


