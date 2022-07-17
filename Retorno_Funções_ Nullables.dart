

//Retorno de Funções com Nullables
void main(){
  String nome = funcao2(8) ?? "Não informado!";
  print(nome.toUpperCase());
  
}

//String funcao() => "Maycon".toUpperCase();//mesma coisa que essa de baixo porem simplificado

/*String funcao(){
  return "Maycon";
}*/

String? funcao2(int x){
  if(x > 10){
    return "Olá Mundo!";
  }
}