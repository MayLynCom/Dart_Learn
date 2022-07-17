//Operação Cascata
void main() {
  List<String> nomes = [];

  //com os dois pontos ".." você consegue ir adicionando os métodos no seu objeto, sem repeti-lo
  nomes //objeto
    ..add("Maycon")
    ..add("Lyncon")
    ..remove("Maycon");

  print(nomes);
}

List<String> funcao2(List<String> lista) {
  //esta desatualizado
  return lista //objeto
    ..add("Maycon")
    ..add("Lyncon")
    ..remove("Maycon");
}
