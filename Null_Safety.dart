//Null Safety
void main() {
  saudacoes2("Maycon Lyncon", cliente: 'Marcos');
}

//e se eu quiser que o parametro não tenha valor vou ter que utilizar o null safety
void saudacoes2(
  String nome, {
  bool mostrarAgora = true,
  String? cliente //ponto de interrogação na frente do tipo de variavel quer dizer q ela é nulla
}) {
  print("Saudadções do $nome");
  if(cliente != null){
  print("Seja Bem Vindo(a), $cliente!");
  }
  
  if (mostrarAgora) {
    print("Agora: ${agora2()}");
  }
}

String agora2() {
  DateTime agora = DateTime.now();
  return agora.toString();
}