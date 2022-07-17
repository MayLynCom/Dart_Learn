//Nullable
void main() {
  saudacoes3("Maycon Lyncon");
}

void saudacoes3(
  String nome, {
  bool mostrarAgora = true,
  String? cliente,
}) {
  print("Saudadções do ${nome.toUpperCase()}");//toUpperCase = tudo em letra maiúscula, colocar o método entre chaves
  
  String c = cliente ?? "Não informado!";//null aware = ??, se o valor de cliente for nullo ele exibira o nao informado, caso nao seja nullo exibira o valor atribuido
  print("Seja Bem Vindo(a), ${c.toUpperCase()}!");//essa forma é melhor do q if

  if (cliente != null) {//toUpperCase com métodos nullos não funcionam, exceto com o if, pois o print só vai ser usado c ela não for nulla
    print("Seja Bem Vindo(a), ${cliente.toUpperCase()}!");
  }

  if (mostrarAgora) {
    print("Agora: ${agora3()}");
  }
}

String agora3() {
  DateTime agora = DateTime.now();
  return agora.toString();
}