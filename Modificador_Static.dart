//Modificador Static
void main() {
  
  Pessoa.alturaPadrao = 1.70;
    
  Pessoa pessoa1 = Pessoa(nome: "Maycon", idade: 21);
  pessoa1.nome;
  pessoa1.idade;
  pessoa1.comer();
  
  print(pessoa1.altura);

  Pessoa.atributoStatic = ", Maycon";
  print(Pessoa.atributoStatic);

  print(Pessoa.metodoStatic());
}

class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;
  double altura = alturaPadrao;

  void comer() {
    print("Comendo...");
  }

  //static = Atributo ou método para a classe
  //serve pra você configurar coisas padrões
  static String atributoStatic = "abc";

  static String metodoStatic() {
    return "Ola mundo $atributoStatic";
  }

  static double alturaPadrao = 0;
}
