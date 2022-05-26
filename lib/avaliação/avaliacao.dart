import 'dart:io';

import 'dart:io';

import 'package:aula/11-05/c%C3%B3digos.dart';

void show() {
  String mensagem = ('''
    -/-/-/-/- Menu -/-/-/-/-/-

    1 - Verificar se as horas extras em quanto tempo as horas extras foram excedidas. (2 horas no máximo)
    2 - Verificar o valor da sua hora 
    3 - Verificar quanto você irá ganhar por hora extra trabalhada
    4 - Verificar o quanto você irá ganhar por hora extra noturna trabalhada
    5 - Verificar o quanto você irá ganhar por hora extra em feriados trabalhados
    6 - Calcular valor do décimo terceiro
    7 -
    8 -
    9 -
    10 -
  
    ''');
  print(mensagem.toUpperCase());
  int opcao = int.parse(stdin.readLineSync()!);
  String resultado = '';
  if (opcao == 1) {
    resultado = interface(() {
      print("Informe a quantidade de horas extras trabalhadas: ");
      double horaExtra = double.parse(stdin.readLineSync()!);

      double horasExcedidas = (horaExtra - 2);

      if (horasExcedidas <= 0) {
        print(
            'As horas extras não foram excedidas! Você trabalhou um total de: ${horaExtra} horas');
      } else {
        return 'A quantidade de horas excedidas além do que é permitido é de: ${horasExcedidas} horas';
      }
    });
    print(resultado.toUpperCase());
  } else if (opcao == 2) {
    resultado = interface(() {
      print('Informe o seu salário: ');
      double salario = double.parse(stdin.readLineSync()!);
      print('Informe a quantidade de horas trabalhadas no mês: ');
      double hora = double.parse(stdin.readLineSync()!);

      double valorHora = (salario / hora);

      return 'O valor da sua hora equivale a: ${valorHora}';
    });
    print(resultado.toUpperCase());
  } else if (opcao == 3) {
    resultado = interface(() {
      print('Informe o seu salário: ');
      double salario = double.parse(stdin.readLineSync()!);
      print('Informe a quantidade de horas trabalhadas no mês: ');
      double hora = double.parse(stdin.readLineSync()!);

      double valorHoraExtra = (salario / hora) * 1.5;

      return 'O valor que será ganho por hora extra trabalhada é de: ${valorHoraExtra}';
    });
    print(resultado.toUpperCase());
  } else if (opcao == 4) {
    resultado = interface(() {
      print('Informe o seu salário: ');
      double salario = double.parse(stdin.readLineSync()!);
      print('Informe a quantidade de horas trabalhadas no mês: ');
      double hora = double.parse(stdin.readLineSync()!);

      double valorHoraExtraNoturna = (salario / hora) * 1.7;

      return 'O valor que será ganho por hora extra noturna trabalhada é de: ${valorHoraExtraNoturna}';
    });
    print(resultado.toUpperCase());
  } else if (opcao == 5) {
    resultado = interface(() {
      print('Informe o seu salário: ');
      double salario = double.parse(stdin.readLineSync()!);
      print('Informe a quantidade de horas trabalhadas no mês: ');
      double hora = double.parse(stdin.readLineSync()!);

      double valorHoraExtraFeriado = (salario / hora) * 2.0;

      return 'O valor que será ganho por hora extra em feriado trabalhada é de: ${valorHoraExtraFeriado}';
    });
    print(resultado.toUpperCase());
  } else if (opcao == 6) {
    resultado = interface(() {
      print('Informe o seu salário: ');
      double salario = double.parse(stdin.readLineSync()!);
      print('Informe a quantidade de meses trabalhados: ');
      int mes = int.parse(stdin.readLineSync()!);

      if (salario <= 1212) {
        double valorDescontoInss = (salario / mes) * 0.075;
        return 'O valor do seu décimo terceiro será de: ${valorDescontoInss}';
      } else if (salario >= 1212.01 || salario <= 2427.35) {
        double valorDescontoInss = (salario / mes) * 0.09;
        return 'O valor do seu décimo terceiro será de: ${valorDescontoInss}';
      } else if (salario >= 2427.36 || salario <= 3641.03) {
        double valorDescontoInss = (salario / mes) * 0.12;
        return 'O valor do seu décimo terceiro será de: ${valorDescontoInss}';
      } else if (salario >= 3641.04) {
        double valorDescontoInss = (salario / mes) * 0.14;
        return 'O valor do seu décimo terceiro será de: ${valorDescontoInss}';
      }
    });
    print(resultado.toUpperCase());
  }
}

// Função que retorna o total de hora extra excedida. (2 horas é o tempo máximo permitido por lei)
double horasExcedidas({required double horaExtra}) {
  validarHorasExtras(horaExtra: horaExtra);
  return horaExtra;
}

// Função que retorna o valor da hora de um funcionário
double valorHora({required double salario, required double hora}) {
  double valorHora = salario / hora;
  return valorHora;
}

// Funcao que retorna o valor ganho por hora extra trabalhada
double valorHoraExtra({required double salario, required double hora}) {
  double valorHoraExtra = (salario / hora) * 1.5;
  return valorHoraExtra;
}

// Funcao que retorna o valor ganho por hora extra noturna trabalhada
double valorHoraExtraNoturna(double salario, double hora) {
  double valorHoraExtraNoturna = (salario / hora) * 1.7;
  return valorHoraExtraNoturna;
}

// Funcao que retorna o valor ganho por hora extra em feriado trabalhada
double valorHoraExtraFeriado(double salario, double hora) {
  double valorHoraExtraFeriado = (salario / hora) * 2.0;
  return valorHoraExtraFeriado;
}

//////////////// Validação dos Dados ///////////////////////////
void validarHorasExtras({required double horaExtra}) {
  if (horaExtra <= 0 ) {
    throw Exception('As horas extras negativas não são válidas');
  }
}
