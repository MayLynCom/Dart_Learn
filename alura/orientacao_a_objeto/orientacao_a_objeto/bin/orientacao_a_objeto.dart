import 'dart:ffi';

void main() {
  String nome = 'laranja';
  double peso = 100.2;
  String cor = 'Verde e amarela';
  String sabor = 'Doce e cítrica';
  int diaDesdeColheita = 40;

  Fruta laranja = Fruta(nome, peso, cor, sabor, diaDesdeColheita);
  Fruta uva = Fruta.nomeados(
      nome: 'Uva', peso: 40, cor: 'Roxa', sabor: 'Doce', diaDesdeColheita: 20);
  Fruta maca = Fruta.maiuscula('maçã', 80, 'Vermelha', 'Doce', 30);

  print(laranja.nome);
  print(uva.cor);
  print(maca.sabor);

  laranja.estaMadura(30);
  uva.estaMadura(60);

  Legumes mandioca1 = Legumes('Macaxeira', 1200, 'Marrom', true);
  Fruta banana1 = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
  Nozes macadamia1 = Nozes('Macadâmia', 2, 'Branco amarelado', 'Doce', 20, 35);
  Citricas limao1 = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

  macadamia1.printAlimeto();
  banana1.printAlimeto();
  mandioca1.printAlimeto();
  limao1.printAlimeto();

  mandioca1.cozinhar();
  limao1.fazerSuco();
  macadamia1.fazermassa();

  bool isMadura = funcEstaMadura(diaDesdeColheita);
  //atribuindo a função que recebe um inteiro da variavel diaDesdeColheita que é um argumento

  print(isMadura);
  print(funcEstaMadura(50));
  //50 é um argumento para o parametro int dias

  //mostrarMadura('Uva', 35, cor: 'Roxa');

  int quantosDias = funcQuantosDiasMadura(diaDesdeColheita);
  print(quantosDias);

  funcRecursiva(0, 10);
  //função de looping
}

class Fruta extends Alimento implements bolo {
  String sabor;
  int diaDesdeColheita;
  bool? isMadura;

  //pode criar varios construtores
  //construtor padrão
  Fruta(String nome, double peso, String cor, this.sabor, this.diaDesdeColheita,
      {this.isMadura})
      : super(nome, cor, peso);

  //construtor nomeado
  Fruta.nomeados(
      {required String nome,
      required double peso,
      required String cor,
      required this.sabor,
      required this.diaDesdeColheita,
      this.isMadura})
      : super(nome, cor, peso);

  //construtor utilizando operações
  Fruta.maiuscula(
      String nome, double peso, String cor, this.sabor, this.diaDesdeColheita,
      {this.isMadura})
      : super(nome, cor, peso) {
    nome = nome.toUpperCase();
    cor = cor.toUpperCase();
    sabor = sabor.toUpperCase();
  }

//função dentro da classe é um método
  estaMadura(int diasParaMadura) {
    //condição = o maior igual retorna um boleano por isso ismadura vai ser true ou false
    isMadura = diaDesdeColheita >= diasParaMadura;
    print(
        'A sua $nome foi colida a $diaDesdeColheita dias, e precisa de $diasParaMadura para poder comer. Ela esta madura? $isMadura');
  }

  fazerSuco() {
    print('Você fez um ótimo suco de $nome');
  }

  @override
  void assar() {
    print('Catar a fruta');
  }

  @override
  void fazermassa() {
    print('Misturar a fruta com farinha, açucar e ovos.');
  }

  @override
  void separarIngredientes() {
    print('Colocar no forno');
  }
}

class Alimento {
  String nome;
  String cor;
  double peso;

  Alimento(this.nome, this.cor, this.peso);

  void printAlimeto() {
    print('Este(a) $nome pesa $peso gramas e é $cor.');
  }
}

class Legumes extends Alimento implements bolo {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, cor, peso);
  //super serve para referencia o pai dessa classe a superclasse no caso alimento

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('pronto o $nome está cozinhando');
    } else {
      print('Nem precisa cozinhar');
    }
  }

  @override
  //override = sobrescrito, ou seja, ja existe porem esta sendo reescrito
  void assar() {
    // colocar mais tempo
  }

  @override
  void fazermassa() {
    // fazer uma papa com o legume
  }

  @override
  void separarIngredientes() {
    // ver se o alimento esta cozido ou cru
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe refrigerante de $nome');
    } else {
      print('Não existe refri de $nome');
    }
  }
}

class Nozes extends Fruta {
  double porcentagemDeOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemDeOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

      @override
      void fazermassa(){
        print('Tirar a casca');
        super.fazermassa();
        //vai printar e depois chamar a função por isso o super esta implementado para chamar a função que ja existe
      }
}

abstract class bolo {
  void separarIngredientes();

  void fazermassa();

  void assar();
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

// Posicionais Obrigatórios = parametros são passados, os argumentos são obrigatórios e devem seguir a mesma posição dos parametros
// Nomeados Opcionais = {quando os parametros estão entre chaves eles se tornam opcionais, podendo utilizar o Null-Safety}
// Parâmetros com 'Padrão' = são parametros que ja tem valor e se estiver entre {chaves} se tornam opcionais e podem ser ou não modificados
// Modificador 'required' = parametros obrigatórios, ou seja, eles podem começar sem valor mas você deve atribuir quando a função for chamada

mostrarMadura(String nome, int dias, {required String cor}) {
//essa função não retorna nada ou seja ela é void por isso nao precisa especificar antes
  if (dias >= 30) {
    print('A $nome está madura.');
  } else {
    print('A $nome não está madura.');
  }
  print('A $nome é $cor.');
}

bool funcEstaMadura(int dias) {
  //função que recebe um parametro inteiro chamado dias e retorna um booleano
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

funcRecursiva(int contador, int condicaoParada) {
  print("Estamos há $contador iterações sem StackOverflow.");
  if (contador >= condicaoParada) {
    return;
  }
  funcRecursiva(contador + 1, condicaoParada);
}
