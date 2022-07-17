//Operador ?
//se aprofundar mais nisso pela documentação, pois é novo 
void main() {
  Pessoa pessoa1 = Pessoa(nome: "Maycon", idade: 21);
  print(pessoa1.nome);
  print(pessoa1.idade);

  //"?" = usado quando a pessoa pode ou não existir
  // por isso tbm nos prints a pessoa2 deve-se adicionar "?" pois o nome, idade etc tbm podem n existir
  //cidade tbm pode ser nulla por isso o "?", alem dela n ser obrigatoria para existir uma pessoa
  Pessoa? pessoa2; //= Pessoa(nome: "Pedro", idade: 18);
  print(pessoa2?.nome);
  print(pessoa2?.idade);
  print(pessoa2?.cidade?.toUpperCase());
  pessoa2?.nascer();
}

class Pessoa {
  Pessoa({required this.nome, required this.idade, this.cidade});

  String nome;
  int idade;
  String? cidade;

  void nascer() {
    print("Nascendo");
  }
}
