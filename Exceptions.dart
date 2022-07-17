//Exceptions
//try / catch utilizado para um error
void main() {
  //"~/" = divisão inteira mostra a divisão sem virgula
  try {
    //ele vai tentar executar o que tiver dentro de try se ele n conseguir, vai para on
    int resultado = 100 ~/ 2;
    print(resultado);

    //.parse converte um texto em int ou double por exemplo e vice versa
    //caso aconteça de não poder converter como o "50.2a", é melhor usar a segunda opção
   // double valor = double.parse("50.2a");
   // print(valor);
    
    //Opção 2
    //essa forma é melhor pq em vez de demonstrar um erro ela exibe null
    double? valor2 = double.tryParse("50.2a");
    print(valor2);
    
  } on UnsupportedError {
    // aqui ele verifica se o erro é "UnsupportedError" se não for vai pra catch
    print("Caiu Aqui!");
  } on FormatException catch (error) {
    print("caiu no ${error.message}");
  } catch (e) {
    //aqui ele esta printando o erro na tela em vez de crashar
    print(e);
  } finally {
    print("Final");
  }
}
