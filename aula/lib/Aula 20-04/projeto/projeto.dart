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

  print("Digite o seu salário: ");
  var salario = double.parse(stdin.readLineSync()!);

  print("Informe a quantidade de horas trabalhadas: ");
  var hora = double.parse(stdin.readLineSync()!);

  print(verificarOpcaoEscolhida(opcaoEscolhida, salario, hora));
}

String verificarOpcaoEscolhida(int opcao, double salario, double hora) {
  if (opcao == 1) {
    return valorHora(salario, hora, (salario, hora) => (salario / hora));
  } else if (opcao == 2) {
    return horaExtraComum(salario, hora, (salario, hora) => (salario / hora) * 1.5);
  } else if (opcao == 3) {
    return horaExtraNoturna(salario, hora, (salario, hora) => ((salario / hora) * 1.5) * 1.2);
  } else {
    return horaExtraDomingoferiado(salario, hora, (salario, hora) => (salario/hora) * 2);
  }
}

String valorHora(double salario, double hora, Function valorDaHora) {
  double valorHora = valorDaHora(salario, hora);
  //double valorHora = salario / hora; //Sem o function
  return 'O valor da sua hora é de: ' + valorHora.toString();
}

String horaExtraComum(
  double salario, double hora, Function calculoHoraExtraComum) {
  double horaExtraComum = calculoHoraExtraComum(salario, hora);
  //double horaExtraComum = (salario / hora) * 1.5; //Sem o function
  return 'O valor da sua hora será de: ' + horaExtraComum.toString();
}

String horaExtraNoturna(
  double salario, double hora, Function calculoHoraExtraNoturna) {
  double horaExtraNoturna = calculoHoraExtraNoturna(salario, hora);
  //double horaExtraNoturna = (((salario / hora) * 1.5) * 1.2); //Sem o function
  return 'O valor da sua hora será de: ' + horaExtraNoturna.toString();
}

String horaExtraDomingoferiado(
  double salario, double hora, Function calculoHoraExtraDomingoFeriado) {
  double horaExtraDomingoFeriado =calculoHoraExtraDomingoFeriado(salario, hora);
  //double horaExtraDomingoFeriado = (salario / hora) * 2;  //Sem o function
  return 'O valor da sua hora será de: ' + horaExtraDomingoFeriado.toString();
}
