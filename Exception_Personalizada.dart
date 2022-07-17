//Exception Personalizadas
void main() {
  try {
    funcao(-10);
  }on VoceEstaFazendoBesteira {//se tiver o on ele puxa a Exception criada e mostra o print do on e nao da Exception
    print("Besteira");
  }
  catch (e) {
    print(e);
  }
}

void funcao(int x) {
  if (x <= 0) {
    //throw chamando a exception
    throw VoceEstaFazendoBesteira();
  }
  print(x);
}

//criando uma Exception
class VoceEstaFazendoBesteira implements Exception {
  String toString (){
    return "Você não pode passar um valor menor que zero";
  }
}