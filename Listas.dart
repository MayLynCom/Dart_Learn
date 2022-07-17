//Coleções - Listas
//consultar a documentação sempre 
void main() {
  //List são do tipo dynamic ou seja aceita qualquer tipo de dados
  //para mudar deve declarar entre <>(maior menor)
  List<String> nomes = [
    "Maycon",
    "Lyncon",
    "Pedro",
  ];
  print(nomes);
  
  //a lista n precisa ter os itens pré-definidos ela pode ser criada vazia
  List<int> idades = [
    15,
    21,
    18,
    56,
    78,
  ];
  //.length = quantidade de itens
  //.first  = primeiro da lista
  //.last = ultimo da lista
  //para pegar um item do meio da lista você deve colocar entre colchetes
  //se o numero dentro do colchetes for menor que 0 ou mais que o numero de itens que tem vai dar erro
  //add = adiciona como ultimo a sua lista 1 item digitado
  idades.add(4);
  //addAll para adicionar varios itens a lista
  idades.addAll([48, 51, 63, 89]);
  //.insert = colocar na posição que desejar
  idades.insert(2, -2);
  
  //.contains ele verifica se tem o item na lista e retorna um booleano(true ou false)
  print(idades.contains(21));
  //.indexOf = mostra qual a colocação do item que você buscou
  print(idades.indexOf(48));
  //.remove = remove o item que você colocar
  print(idades.remove(51));
  //.removeAt = remove por posição
  print(idades.removeAt(6));
  //suffle = embaralhar a lista
  idades.shuffle();
  //.clear = zera a lista
  idades.clear();
  
  print(idades);
}

void main1() {
  List<String> nomes = [
    "Maycon",
    "Pedro",
    "Gustavo",
    "Rafael",
    "Victor",
    "Nicolas",
    "Vinicius",
  ];
  
  print(nomes);
  
  //Como deixar todos os itens em maiusculo, caso seja String
  //se quiser especificar o começo e final basta adicionar .sublist() na lista que você for usar
    for(String nome in nomes.sublist(2, 4)){
      print(nome.toUpperCase());
    }
  
  //outra forma de fazer
  //.forEach = pra cada nome ele usa essa função anonima 
  //tbm da pra usar o .sublist junto 
  //nomes.forEach((nome){
  //print(nome.toUpperCase());
  //});

}

void main2(){
  //Lista repetida 
  //.filled (quantidade, qual item que ira repetir)
  List<String> maluca = List.filled(10, "Maycon");
  print(maluca);
  
  //.generate = (quantidade, função, )
  List<int> doida = List.generate(11, (i) => i * 10);
  //.isEmpty = retorna se a lista esta vazia com um booleano, se n estiver ela exibe false
  //.isNotEmpty = inverso do isEmpty 
  print(doida.isNotEmpty);
  print(doida);
  
  doida.remove(0);
  //.any = verifica cada item da lista ex: se é divisivel no caso
  print(doida.any((i) => i % 33 == 0));
  
  //.firstWhere = procura o primeiro item ex: divisivel por 40 
  //lastWhere = procura o ultimo item
  print(doida.firstWhere((i) => i % 40 == 0));
  
  //.where = procura os itens da lista ex: que são divisiveis por 20
  print(doida.where((i) => i % 20 == 0));
  
  //.map = mapeia a lista ex: adiciona +1 para cada item 
  print(doida.map( (i) => i + 1));
}




void main3() {
  //Para adicionar valores nullos colocar "?" depois de String
  //depois de String ela ainda existe, porem agr consegue colocar valores nullos
  
  
  List<String?> lista1 = [];
  
    lista1.add("Maycon");
  
  //agr a lista vira nulla quando você adiciona "?" depois de ">",ou seja,
  //não da para adicionar nada na lista sem um if 
  //não da pra adicionar um null
  List<String>? lista2;
  if(lista2 != null){
    lista2.add("Lyncon");
  }
  
  
  //quando o "?" esta dentro e fora permite você criar uma lista nulla e tbm adicionar o null com if
  //"?" na String é referente aos itens da lista 
  //"?" na ">" é referente a lista 
  List<String?>? lista3;
  if(lista3 != null){
    lista3.add(null);
  }

}