import 'dart:io';

void show(){
  print(''' MENU DE OPÇÔES
  1 - Calcular a hora extra noturna
  2 - Calcular a hora extra no feriado 
  3 - Calcular a hora extra na folga 
  ''');

  print("Informe a opção que deseja: ");
  var opcaoEscolhida = int.parse(stdin.readLineSync());
}