// 5) Duas funções com parâmetros posicionais opcionais (valor padrão);
// 6) Uma função com parâmetros nomeados obrigatórios;
// 7) Uma função com parâmetros nomeados opcionais;
// 8) Uma função com parâmetros nomeados obrigatórios e opcionais;
// 9) Uma única função com parâmetros nomeados e posicionais;

import 'dart:io';

void show() {
  stdout.write('Informe seu salario: ');
  double salario = double.parse(stdin.readLineSync()!);
  stdout.write('Informe as horas trabalhadas: ');
  double horas = double.parse(stdin.readLineSync()!);

  var valorHora = verificarValorHora(salario, horas);
  print(valorHora);
  var valorHoraExtraComum = verificarValorHoraExtraComum(salario, horas);
  print(valorHoraExtraComum);

  var valorHora1 = verificarValorHora1(salario: 1000, horas: 220);
  print(valorHora1);

  var valorHoraNoturna = verificarValorHoraNoturna(salario: 1000, horas: 220);
  print(valorHoraNoturna);

  var valorHoraNoturna1 = verificarValorHoraNoturna1(salario: 1000, horas: 220);
  print(valorHoraNoturna1);

  var valorHoraExtraFeriado = verificarValorHoraExtraFeriado(horas, salario: 1000,);
  print(valorHoraExtraFeriado);
}

// 5) Duas funções com parâmetros posicionais opcionais (valor padrão);
String verificarValorHora([double salario = 1000, double horas = 220]) {
  double valorHora = salario / horas;
  return 'O valor da sua hora é de: ' + valorHora.toString();
}

String verificarValorHoraExtraComum(double salario, double horas,
    [double horaExtra = 1.5]) {
  double valorHora = (salario / horas) * 1.5;
  return 'O valor da sua hora é de: ' + valorHora.toString();
}

// 6) Uma função com parâmetros nomeados obrigatórios;
String verificarValorHora1({required double salario, required double horas}) {
  double valorHora1 = salario / horas;
  return 'O valor da sua hora é de: ' + valorHora1.toString();
}

// 7) Uma função com parâmetros nomeados opcionais;
String verificarValorHoraNoturna({double salario = 1000, double horas = 220}) {
  double valorHoraNoturna = (salario / horas) * 1.7;
  return 'O valor da sua hora é de: ' + valorHoraNoturna.toString();
}

// 8) Uma função com parâmetros nomeados obrigatórios e opcionais;
String verificarValorHoraNoturna1(
    {required double salario, double horas = 220}) {
  double valorHoraNoturna1 = (salario / horas) * 1.7;
  return 'O valor da sua hora é de: ' + valorHoraNoturna1.toString();
}

// 9) Uma única função com parâmetros nomeados e posicionais;

String verificarValorHoraExtraFeriado(double horas, {required double salario}) {
  double valorHoraExtraFeriado = (salario / horas) * 2.0;
  return 'O valor da sua hora é de: ' + valorHoraExtraFeriado.toString();
}
