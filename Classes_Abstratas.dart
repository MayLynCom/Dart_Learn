//Classes Abstratas
void main() {
  Cachorro cachorro1 = Cachorro("rex", 3);
  print(cachorro1.nome);
  print(cachorro1.idade);
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();
  
  cachorro1.morrer();

  Gato gato1 = Gato("Garfield", 2);
  gato1.vidas--;
  print(gato1.nome);
  print(gato1.idade);
  gato1.comer();
  gato1.dormir();
  gato1.miar();
  
  gato1.morrer();

  print(gato1);
}

//abstract torna a classe abstrata, ou seja, não tem como criar nenhum animal
//porém você pode criar um cachorro e um gato que são animais
//você só utiliza a class agora pq cachorro e gato tem coisas em comum
abstract class Animal extends Object {
  Animal(this.nome, this.idade);

  String nome;
  int idade;

  void comer() {
    print("Comeu");
  }

  void dormir() {
    print("dormiu");
  }

  @override
  String toString() {
    return "nome: $nome e idade: $idade";
  }

  void morrer(){
    //esse é um comportamento pré-definido
    //se ele n for pré-definido tem que sobreescrever em cada classe que se extende de animal
    //isso n vai ser mostrado pq cachorro e gato ja reescreveram as suas formas de utilizar esse método
    //caso eles não tivesse reescrito iria mostrar esse print
   print("teste de morte") ;
  }
}

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade) {
    print("Criou o cachorro $nome");
  }

  void latir() {
    print("AUAU");
  }

  @override
  void dormir() {
    super.dormir();
    print("roncando muito !!!");
  }

  @override
  String toString() {
    return "Cachorro - nome: $nome e idade: $idade";
  }

  //reencreveu o método morrer, pois animal é abstrato
  @override
  void morrer() {
    print("Muito Triste...:(");
  }
}

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, idade);

  int vidas = 7;

  void miar() {
    print("miau");
  }

  @override
  String toString() {
    return "Gato - nome: $nome e idade: $idade";
  }

  @override
  void morrer() {
    vidas--;
    print("Sobrou $vidas vidas");
  }
}
