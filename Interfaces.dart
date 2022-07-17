//interfaces
//isso é usado pra que você possa trocar os repositorios sem ter conflito de métodos, caso eles forem escrito de outra forma
void main (){
  RepositorioPessoas repo = RepositorioPessoasRemote();
  repo.ler(10);
  repo.adicionar("Lyncon");
  repo.apagar(5);
}

abstract class RepositorioPessoas {
  String ler(int i);
  void adicionar(String nome);
  void apagar(int i);
}

//implement te obriga a implementar exatamente tudo q esta escrito dentro da classe que você esta usando ele

class RepositorioPessoasRemote implements RepositorioPessoas {
  @override
  void adicionar(String nome) {
    // TODO: implement adicionar
  }

  @override
  void apagar(int i) {
    // TODO: implement apagar
  }

  @override
  String ler(int i) {
    return "Maycon";
  }

}

class RepositorioPessoasLocal implements RepositorioPessoas {
  @override
  void adicionar(String nome) {
    // TODO: implement adicionar
  }

  @override
  void apagar(int i) {
    // TODO: implement apagar
  }

  @override
  String ler(int i) {
    return "Lyncon";
  }
  

}