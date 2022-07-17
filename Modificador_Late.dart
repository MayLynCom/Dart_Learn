//Modificador Late
//Late = significa que a variavel não tem valor, porem vai ter depois
//sempre utilizar quando uma variavel no começo nao tem valor mas é obrigadar a ter ex: CPF
void main() {
  Pessoa pessoa1 = Pessoa(nome: "Maycon", idade: 21);

  pessoa1.cpf = "339.889.898-00";
  print(pessoa1.cpf);
  print(pessoa1.temperatura);
  print(pessoa1.temperatura);
  print(pessoa1.temperatura);
}

class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;

  late String cpf;

  //outra utilização do late
  //ele só vai printar a temperatura se medir a temperatura
  //se a temperatura vai sempre mudar utilize getter, pois sempre vai ter a mais atual
  //se for a mesma sempre utilize somente o late
  late double temperatura = medirTemperatura();
  double medirTemperatura() {
    print("Mediu a temperatura");
    return 37.0;
  }
}
