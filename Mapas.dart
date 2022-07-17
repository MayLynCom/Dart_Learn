//Mapas
//aprender com a documentação tbm
void main() {
  //se colocar "?" na String você consegue adicionar valores nullos
  Map<int, String?> ddds = {
    11: "São Paulo",
    19: "Campinas",
    41: "Curitiba",
    55: null,
  };

  String? cidade = ddds[11];
  //se colocar um numero que não tem no map ele retorna null
  print(cidade);

  //quantidade de itens
  print(ddds.length);

  //adicionar
  //se adicionar ao um numero existente ele vai trocar pelo que você acabou de colocar
  ddds[61] = "Brasília";

  print(ddds);

  ddds.remove(55);

  //.values = somente os valores da lista, ex: os nomes das cidades
  print(ddds.values);

  //.Keys = somente as chaves da lista, ex: os DDDs das cidades
  print(ddds.keys);

  //.containsKey = verificar se tem uma chave retorna um booleano
  print(ddds.containsKey(11));

  //.containsValue = verificar se tem um valor retorna um booleano
  print(ddds.containsValue("Campinassss"));

  //isEmpty = esta vazio ? se estiver exibe true se não false
  print(ddds.isEmpty);

  //isNotEmpty = inverso de isEmpty
  print(ddds.isNotEmpty);

  //forEach = para cada um da lista
  ddds.forEach((key, value) {
    print("Key $key e Value $value");
  });

  //remove todos os itens
  //ddds.clear();

  //adiciona todos os itens a lista
  ddds.addAll({
    13: "Santos",
    91: "Cidade de Deus",
  });

  //removeWhere = remove aonde ex: o valor que for maior que 20
  ddds.removeWhere((key, value) => key > 20);

  //"!" só utilizar c tiver ctz q ele n é nullo
  String cidadezinha = ddds[12]!;
  print(cidadezinha.toUpperCase());

  void main13() {
    //"?" na String pode adicionar valores nullos
    //"?" depois da > o Map pode estar vazio e pra remover precisa de if igual a List
    //"?" na String e depois da > vai conseguir fazer os dois processos de cima
    // A chave(key) não pode ser nulla
    Map<int, String?> ddds = {
      11: "São Paulo",
      19: "Campinas",
      41: "Curitiba",
    };
  }
}
