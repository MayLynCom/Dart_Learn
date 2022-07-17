//Final Const
void main() {
  //const é uma constante ou seja nunca vai mudar sempre vai ser a mesma
  //não tem como modificar ou adicionar nada
  //não precisa espeficicar o tipo da variavel, mas precisa especificar o valor 
  const nome = "Maycon";
  const idade = 50 + 30;
  const lista = [
    "Maycon",
    "Lyncon",
  ];

  //final é igual a const porem ela pode ser vazia e o valor dela vir dps na execução do app
  final DateTime DataHora = DateTime.now();
  print(DataHora);
}