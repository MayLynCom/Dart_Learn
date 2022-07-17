//Operador Cast = converte o objeto de um tipo para outro tipo
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
  
  //as = significa "como" =  um operador de cast, vai usar o retorno da função como cachorro
  //só utilize ele se tiver certeza que é um cachorro, caso seja gato, ele vai tratar uma exceção no seu codigo
  //se n tratar a exceção com try/catch vai crashar
  //outra forma é utilizar o if em vez do "as"
  Cachorro animal1 = funcao() as Cachorro; 
  animal1.latir();

}

Animal funcao(){
  return Gato("miauuuuu", 7);
}

class Animal extends Object{
  
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

  Cachorro(String nome, int idade)  : super(nome, idade){

    print("Criou o cachorro $nome");
  }
  
  void latir(){
    print("AUAU");
  }
  
  @override
  void dormir(){
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