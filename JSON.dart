//JSON
//para converter o json em dart
//import "dart:convert"; COMENTADO PQ TA DANDO ERRO
import "dart:convert";

void main() {
  //le a String e retorna de uma forma que da pra ler 
  //Chave é sempre String
  Map<String, dynamic> dados = json.decode(dadosDoUsuario()); 
  print(dados["nome"]);
  print(dados["cursos"][0]["nome"]);
  print(dados["endereço"]["pais"]);
}

String dadosDoUsuario() {//representar uma String com mais de uma linha """ e """;
  return """
  {
  "nome": "Maycon Lyncon",
  "sobrenome": "Lima de Sousa",
  "idade": 21,
  "casado": false,
  "altura": 1.69,
  "cursos": [
    {
      "nome": "Dart",
      "dificuldade": 1
    },
    {
      "nome": "Fluter",
      "dificuldade": 2
    }
  ],
  "endereço": {
    "cidade": "Santos",
    "pais": "Brasil",
    "numero": 100
  }
}
"""; 
}