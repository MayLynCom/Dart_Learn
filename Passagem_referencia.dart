//Passagem de referencia
void main() {
  //pessoa1 é um objeto que armazena os dados, ou seja,
  //é um local onde eles ficam la por um tempo até serem mudados
  Pessoa pessoa1 = Pessoa(nome: "Maycon", idade: 21);
  print(pessoa1.nome);
  print(pessoa1.idade);

  //você pega as informações que estão sendo guardadas em pessoa1
  Pessoa pessoa2 = pessoa1;
  print(pessoa2.nome);
  print(pessoa2.idade);

  //se o dado de pessoa 1 for mudado o de pessoa 2 tbm vai ser
  pessoa1.nome = "Pedro";
  print(pessoa2.nome);

  //objeto referenciado
  funcao(pessoa1);
  print(pessoa1.idade);
}

//criou uma função que aumenta a idade da pessoa
//ela utiliza da idade que esta guardada no objeto que for referenciado no caso pessoa 1
//a função utiliza como parametro
void funcao(Pessoa pessoa) {
  pessoa.idade++;
}

class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;
}
