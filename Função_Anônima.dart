
//função Anônima
//\n para quebrar linha dentro da ""
void main() {
  saudacoes5("Maycon Lyncon", corpo: (i) {//função Anônima
    for (int j = 0; j < i; j++) {
      print("Olá $j");
    }
  }); //mostra oq esta dentro da função
}

/*void funcao(int i) {
  //essa é a função q foi passada para o parametro
  for (int j = 0; j < i; j++) {
    print("Olá $j");
  }
}
*/

void saudacoes5(
  String nome, {
  bool mostrarAgora = true,
  String? cliente,
  required Function(int) corpo,
  //parametro do tipo Function(tem que passar uma função pro parametro), required torna ele obrigatório
}) {
  print("Saudadções do ${nome.toUpperCase()}");

  corpo(5);

  String c = cliente ?? "Não informado!";

  print("Seja Bem Vindo(a), ${c.toUpperCase()}!");

  if (cliente != null) {
    print("Seja Bem Vindo(a), ${cliente.toUpperCase()}!");
  }

  if (mostrarAgora) {
    print("Agora: ${agora5()}");
  }
}

String agora5() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
