
//parametro opcional(com valor padrão)////////////////////////
import 'dart:io';

void show() {
  print(''' MENU DE OPÇÔES
    1 - Cálculo de quanto vale a hora trabalhada
    2 - Cálculo hora extra comum
    3 - Cálculo hora extra noturna
    4 - Cálculo hora extra domigo e feriados
    ''');

  print("Informe a opção que deseja: ");
  var opcaoEscolhida = int.parse(stdin.readLineSync()!);

  print(verificarOpcaoEscolhida(opcaoEscolhida));
}

verificarOpcaoEscolhida(int opcao) {
  if (opcao == 1) {
    return valorHora();
  } else if (opcao == 2) {
    return horaExtraComum();
  }
}

String valorHora([double salario = 1800, double hora = 220]) {
  double valorHora = (salario / hora);
  return 'O valor da sua hora é de: ' + valorHora.toString();
}

String horaExtraComum([double salario = 1800, double hora = 220]) {
  double horaExtra = (salario / hora) * 1.5;
  return 'O valor da sua hora é de: ' + horaExtra.toString();
}
