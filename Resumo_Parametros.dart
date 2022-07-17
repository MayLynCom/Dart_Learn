//Resumo sobre parametros
void main() {
  saudacoes4("Maycon Lyncon");

  funcao("Olá", null, f: "qwe", c: null, d: "Teste", e: null);
}

void saudacoes4(
  String nome, {
  bool mostrarAgora = true,
  String? cliente,
}) {
  print("Saudadções do ${nome.toUpperCase()}");

  String c = cliente ?? "Não informado!";

  print("Seja Bem Vindo(a), ${c.toUpperCase()}!");

  if (cliente != null) {
    print("Seja Bem Vindo(a), ${cliente.toUpperCase()}!");
  }

  if (mostrarAgora) {
    print("Agora: ${agora4()}");
  }
}

String agora4() {
  DateTime agora = DateTime.now();
  return agora.toString();
}

void funcao(String a, String? b,
    { //a grande diferença é q dentro das chaves você pode declarar em qualquer posição
    String? c = "abcde",
    required String d, //variavel obrigatória(required) não nulla
    required String? e, //variavel obrigatória quer pode ser nulla
    String f = "qwerty"}) {}