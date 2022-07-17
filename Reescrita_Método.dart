//Reencrita de métodos
void main(){
  Cachorro cachorro1 = Cachorro();
  cachorro1.nome = "Rex";
  print(cachorro1.nome);
  cachorro1.idade = 3;
  print(cachorro1.idade);
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();
  
  Gato gato1 = Gato();
  gato1.nome = "sheldon";
  print(gato1.nome);
  gato1.idade = 2;
  print(gato1.idade);
  gato1.comer();
  gato1.dormir();
  gato1.miar();
  
  print(gato1.toString());
  
  //runtimeType = mostra o tipo do objeto
  int x = 10;
  print(10.runtimeType);
  
}
//Toda classe herda de object, por isso não precisa ser mostrado
class Animal extends Object{
  String? nome;
  int? idade;
  
  void comer(){
    print("Comeu");
  }
  void dormir(){
    print("dormiu");
  }
  
  //precisa do overtide pq herda do object qu é uma classe que todas as classes que você cria herda
  //com isso você herda o toString
  @override
  String toString(){
    return "nome: $nome e idade: $idade";
  }
}

class Cachorro extends Animal{
  void latir(){
    print("AUAU");
  }
  
  //reescreveu o mesmo método porem diferente pra cachorro, vai utilizar o que esta dentro de cachorro
  @override
  //override = sobre escrita ou seja ele esta reencrevendo um método que ja existe na superclasse Animal
  void dormir(){
    print("Dormiu roncando muito !!!");
  }
  
  @override
  String toString(){
    return "Cachorro - nome: $nome e idade: $idade";
  }
}

class Gato extends Animal{
  void miar(){
    print("miau");
  }
  
  @override
  String toString(){
    return "Gato - nome: $nome e idade: $idade";
  }
}