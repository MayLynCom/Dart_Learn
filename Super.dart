//Super
//acessa atributos, métodos, construtores, getters e setters
void main(){
  Cachorro cachorro1 = Cachorro("rex", 3);
  print(cachorro1.nome);
  print(cachorro1.idade);
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();
  
  Gato gato1 = Gato("Garfield", 2);
  gato1.vidas--;
  print(gato1.nome);
  print(gato1.idade);
  gato1.comer();
  gato1.dormir();
  gato1.miar();
  
  print(gato1);

  
}

class Animal extends Object{
  //parametros obrigatórios  e não nomeados
  //agora voce é obrigado a passar o nome e a idade
  Animal(this.nome, this.idade);
    
  String nome;
  int idade;
  
  void comer(){
    print("Comeu");
  }
  void dormir(){
    print("dormiu");
  }
  
  @override
  String toString(){
    return "nome: $nome e idade: $idade";
  }
}

class Cachorro extends Animal{
  
  //Agora o cachorro recebe o nome e idade
  //super serve para passar o nome e idade para Animal
  Cachorro(String nome, int idade)  : super(nome, idade){
    //irá printar quando criar o cachorro
    print("Criou o cachorro $nome");
  }
  
  void latir(){
    print("AUAU");
  }
  
  @override
  void dormir(){
    //super permite acessar a super classe Animal, conseguindo utilizar do método dormir
    super.dormir();
    print("roncando muito !!!");
  }
  
  @override
  String toString(){
    return "Cachorro - nome: $nome e idade: $idade";
  }
}

class Gato extends Animal{
  
  Gato(String nome, int idade)  : super(nome, idade);
  
  int vidas = 7;
  
  void miar(){
    print("miau");
  }
  
  
  
  @override
  String toString(){
    return "Gato - nome: $nome e idade: $idade";
  }
}