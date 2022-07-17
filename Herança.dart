//Herança
//o que cachorro q gato tem em comum ?, são animais 
//foi criado uma classe animal para o cachorro e o gato herdarem suas caracteristicas semelhantes com  o extends
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
  
}

class Animal{
  String? nome;
  int? idade;
  
  void comer(){
    print("Comeu");
  }
  void dormir(){
    print("dormiu");
  }
}

class Cachorro extends Animal{
  void latir(){
    print("AUAU");
  }
}

class Gato extends Animal{
  void miar(){
    print("miau");
  }
}