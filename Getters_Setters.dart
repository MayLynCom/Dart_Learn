//Getters e Setters
//server para a pessoa não conseguir modificar um valor com tanta liberdade
//ela tem uma condição
//e ela não pode acessar o valor tão facilmente por isso q o underline é colocado no começo da variavel
//para q não possa ser acessada antes de estar na condição

void main() {
  Pessoa pessoa1 = Pessoa(nome: "Maycon", idade: 21);
  Pessoa pessoa2 = Pessoa(nome: "Pedro", idade: 18, casado: true);

  //boas praticas não acessar com underline na frente
  pessoa1.dinheiro = 300;
  pessoa2.dinheiro = 10000;

  print(pessoa1.dinheiro);
  print(pessoa2.dinheiro);

  if (pessoa1.dinheiro > 150) {
    print(pessoa1.dinheiro);
  }
  
  //getter devem ser lidos somente uma vez
  //utilizar de outra variavel para poder printar 
  String? nome = pessoa1.codeNome;
  if(nome != null){
    print(nome);
  }
  
  //se não for getter mas for nullo utilizar o if
  if(pessoa1.atributo != null){
    //Exclamação "!" server para tornar em não nullo
    print(pessoa1.atributo!.toUpperCase());
  }
  
}

class Pessoa {
  Pessoa({required this.nome, required this.idade, this.casado = false}) {
    print("Criando o $nome com idade $idade");
  }

  String nome;
  int idade;
  bool casado;

  double _dinheiro = 0;

  String? _codeNome = "Flutter";

   
  get codeNome {
    String? nome = _codeNome;
    if (nome != null) {
      _codeNome = null;
      return nome;
    } else {
      return null;
    }
  }
  
  String? atributo;

  int aniversario() {
    print("Feliz aniversário! $nome");
    idade++;

    return idade;
  }

  //setter serve para atribuir um valor não diretamente e com uma validação
  set dinheiro(double? valor) {
    if (valor != null && valor >= 0 && valor <= 1000000) {
      print("Modificando dinheiro do $nome");
      _dinheiro = valor;
    }
  }

  //getter serve para printar o valor
  double get dinheiro {
    print("Lendo dinheiro do $nome");
    _dinheiro -= 100;
    return _dinheiro;
  }
}

