void main() {

  //Comentário

  /* Comentário
  * em
  * várias
  * Linhas*/

  //CRTL + / comenta o que esta selecionado

  ///Comentário de Documentação
  /** Comentário de Documentação de multiplas linhas **/

  var idade = 21;
  double altura = 1.67;
  //780000000 = 780e6
  //780e6 = e6 = 10 elevado a 6
  bool geek = (idade != altura);
  const String nome = 'Maycon Lyncon Lima de Sousa';
  final String apelido;
  apelido = 'Mike';
  bool maiorDeIdade;
  int energia = 100;

  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  for (int i = 1; i < 5; i = i + 2) {
    print('conclui $i voltas');
  }

  while (energia > 0) {
    print('mais uma repetição');
    energia = energia - 6;
  }

  do {
    print('mais uma repetição');
    energia = energia - 6;
  } while (energia > 0);

  //break com while
  int count = 1;
  while (count <= 10) {
    print("Geek, you are inside loop $count");
    count++;

    if (count == 4) {
      break;
    }
  }
  print("Geek, you are out of while loop");

  //break com do/while
  count = 1;
  do {
    print("Geek, you are inside loop $count");
    count++;

    if (count == 5) {
      break;
    }
  } while (count <= 10);
  print("Geek, you are out of do..while loop");

  for (int i = 1; i <= 10; ++i) {
    if (i == 2) break;

    print("Geek, you are inside loop $i");
  }

  print("Geek, you are out of loop");

  //continue com while
  count = 0;
  while (count <= 10) {
    count++;

    if (count == 4) {
      print("Number 4 is skipped");
      continue;
    }

    print("Geek, you are inside loop $count");
  }

  print("Geek, you are out of while loop");

  //continue com do/while
  count = 0;
  do {
    count++;

    if (count == 4) {
      print("Number 4 is skipped");
      continue;
    }

    print("Geek, you are inside loop $count");
  } while (count <= 10);
  print("Geek, you are out of while loop");

  //continue com for
  for (int i = 1; i <= 10; ++i) {
    if (i == 2) {
      print("Geek, you are inside loop $i");
      continue;
    }
  }

  print("Geek, you are out of loop");

  //Switch/Case
  var grade = "A";

  switch (grade) {
    case "A":
      {
        print("Excellent");
      }
      break;

    case "B":
      {
        print("Good");
      }
      break;

    case "C":
      {
        print("Fair");
      }
      break;

    case "D":
      {
        print("Poor");
      }
      break;

    default:
      {
        print("Invalid choice");
      }
      break;
  }

  List<dynamic> maycon = [idade, altura, geek, nome, apelido];

  String frase = 'Eu sou ${maycon[4]} \n'
      'mas meu nome completo é ${maycon[3]},\n'
      'eu me considero geek? ${maycon[2]},\n'
      'tenho ${idade = 42} metros de altura e ${maycon[0]} anos de idade \n'
      'eu sou maior de idade? $maiorDeIdade';
  print(frase);

  // String to int
  var one = int.parse('1');
  print("1.");
  print(one);
  print(one.runtimeType);

  // String to double
  var onePointOne = double.parse('1.1');
  print("\n2.");
  print(onePointOne);
  print(onePointOne.runtimeType);

  // int to String
  var twenty = 20.toString();
  print("\n3.");
  print(twenty);
  print(twenty.runtimeType);

  // double to String
  var pi = 3.14316.toStringAsFixed(2);
  print("\n4.");
  print(pi);
  print(pi.runtimeType);

  List<String> Listanomes = ['Pedro', 'Rafa', 'Victor', 'Gustavo', 'Isa'];
  //TODO = no futuro

  print(maycon);
  print(Listanomes[0]);

  List <String> sublist = Listanomes.sublist(1, 3);
  print(sublist);
  //sublist = cria uma sublista de outra lista

  Listanomes.forEach((element) {
    print(element);
  });
  //ForEach mostra a lista com quebra de linha podendo adicionar algo antes ou depois

  String procurando = 'Victor';
  if(Listanomes.contains(procurando)){
    //contains = procura dentro da lista se tem seu objeto
    //! exclamação antes do contains procura se não contem
    print('achou');
  }
  else print('não achou');


  String myFriends = Listanomes.reduce((value, element) {
    return value + ' ' + element;
  });
  print(myFriends);
  //reduce = reduze a sua lista em um objeto
  //por exemplo c a sua lista tem o seu nome em cada campo ele junta tudo numa string e vira o seu nome completo


  List <String> maiores = Listanomes.where((element) => element.length > 4).toList();
  //Where = Localiza e os nomes com mais de 4 caracteres, o where é do Iterable por isso tem q utilizar .toList para transformar em Lista
  //firstWhere = vai localizar o primeiro com mais de 4 caracteres
  //lastWhere  = mesma coisa porem o último



  var fruits = ['banana', 'pineapple', 'watermelon'];

  var mappedFruits = fruits.map((fruit) => 'I love $fruit').toList();
  print(mappedFruits);
  //map = recria a lista

  var numbers = [1, 3, 2, 5, 4];
  print(numbers.contains(2));
  //contains = Verifica para confirmar se o elemento fornecido está na lista

  numbers.sort((num1, num2) => num1 - num2);
  print(numbers);
  //sort = Ordene os elementos com base na função de ordenação fornecida


  List<Map<String, dynamic>> users = [
    {'name': 'John', 'age': 18},
    {'name': 'Jane', 'age': 21},
    {'name': 'Mary', 'age': 23},
  ];
  var is18AndOver = users.every((user) => user['age'] >= 18);
  print(is18AndOver);

  var hasNamesWithJ = users.every((user) => user['name'].startsWith('J'));
  print(hasNamesWithJ);
  //every = Confirma que cada elemento satisfaz o teste

  var fiboNumbers = [1, 2, 3, 5, 8, 13, 21];
  print(fiboNumbers.take(3).toList());
  //aqui ele para no 3 elemento no caso o 5
  print(fiboNumbers.skip(5).toList());
  //aqui ele começa no 5 elemento no caso o 13
  print(fiboNumbers.take(3).skip(2).take(1).toList());

  var clonedFiboNumbers = List.from(fiboNumbers);
  print('Cloned list: $clonedFiboNumbers');
  //from = Clona outra lista

  var pairs = [
    [1, 2],
    [3, 4]
  ];
  var flattened = pairs.expand((pair) => pair).toList();
  print('Flattened result: $flattened');
  //junta as duas listas

  var input = [1, 2, 3];
  var duplicated = input.expand((i) => [i, i]).toList();
  print(duplicated);
  //duplica cada numero
  //expand = Expande cada elemento em zero ou mais elementos
}
