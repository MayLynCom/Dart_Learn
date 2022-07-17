  //Enumeradores

//enumerador sem ponto e virgula no final 
//serve para você não colocar valores invalidos,
//para não errar na hora de escrever uma coisa que ja pode ser pré definida 
//ex: reembolsao
//pode usar com switch
enum StatusPagamento{pendente, pago, reembolsado}
void main(){
  StatusPagamento status = StatusPagamento.reembolsado;
  // clicar em cima de switch e segurar ALT + ENTER e apertar ENTER novamente
  //pois ele cria os cases sozinho
  switch(status){
      
    case StatusPagamento.pendente:
      print("Pendente");
      break;
    case StatusPagamento.pago:
      
      break;
    case StatusPagamento.reembolsado:
      
      break;
  }
  //Banco de dados não suporta enumerador
  //.index mostra o indice de qual esta sendo utilizado ex: reembolsado é o 2 pq começa com 0
  //isso serve pra armazenar no banco de dados, pega o numero 
  print(status.index);
  
  //isso serve pra você saber qual esta em cada posição
  print(StatusPagamento.values[2]);
}