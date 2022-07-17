//Classe, Objeto e Atributo
//métodos
//Contrutores e Contrutores Nomeados
void main() {
  //pessoa 1 e 2 são objetos
  //cada pessoa tem seu valor de atributo
  //Contrutor Pessoa
  Pessoa pessoa1 = Pessoa.casada(nome: "Pedro", idade: 21);
  pessoa1.trocarNome("Jão");
  print("Troca de nome para ${pessoa1.nome}");
  print(pessoa1.casado);

  print(pessoa1.aniversario());

  print(pessoa1.casado);
}

//classe
//Contrutores no inicio, depois atributos, por fim os métodos
class Pessoa {
  Pessoa({required this.nome, required this.idade, this.casado = false}) {
    print("Criando o $nome com idade $idade");

    //this. esta se referindo ao proprio objeto pessoa, ou seja o nome e idade dela
    //this.nome = nome; esse outro nome seria o do construtor ex: String nome
    //this.idade = idade;
  }

  Pessoa.casada(
      {required this.nome, required this.idade, this.casado = true}) {}
  Pessoa.soltera(
      {required this.nome, required this.idade, this.casado = false}) {}

  //nome e idade são atributos
  String nome;
  int idade;
  bool casado;

  //declarar função dentro da classe ela vira método
  //método forma de interagir(ações) com os objetos
  int? aniversario() {
    print("Feliz aniversário! $nome");
    idade++;

    return idade;
  }

  void trocarNome(String n) {
    nome = n;
  }
}