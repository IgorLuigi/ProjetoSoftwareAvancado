import 'dart:io';

import 'package:aula/11-05/c%C3%B3digos.dart';

void show() {
  String mensagem = ('''
    -/-/-/-/- Menu -/-/-/-/-/-

    1 - Verificar em quanto tempo as horas extras foram excedidas. (2 horas no máximo)
    2 - Verificar o valor da sua hora 
    3 - Verificar quanto você irá ganhar por hora extra trabalhada
    4 - Verificar o quanto você irá ganhar por hora extra noturna trabalhada
    5 - Verificar o quanto você irá ganhar por hora extra em feriados trabalhados
    6 - Verificar salário com hora extra 
    7 - Verificar salário com hora extra noturna
    8 - Verificar salário com hora extra em feriados
    9 - Verificar quanto irá ser descontado de INSS de acordo com o seu salário
    10 - Calculando aumento do salário
  
    ''');
  print(mensagem.toUpperCase());
  int opcao = int.parse(stdin.readLineSync()!);
  String resultado = '';
  try {
    if (opcao == 1) {
    resultado = conexao(() {
      print("Informe a quantidade de horas extras trabalhadas: ");
      double horaExtra = double.parse(stdin.readLineSync()!);
      double horasExcedidas = (horaExtra - 2);

      if (horasExcedidas <= 0) {
        //print(
            //'As horas extras não foram excedidas! Você trabalhou um total de: ${horaExtra} horas');
      } else {
        return 'A quantidade de horas excedidas além do que é permitido é de: ${horasExcedidas} horas';
      }
    });
    print(resultado.toUpperCase());
  } else if (opcao == 2) {
    resultado = conexao(() {
      print('Informe o seu salário: ');
      double salario = double.parse(stdin.readLineSync()!);
      print('Informe a quantidade de horas trabalhadas no mês: ');
      double hora = double.parse(stdin.readLineSync()!);

      double valorHora = (salario / hora);

      return 'O valor da sua hora equivale a: ${valorHora}';
    });
    print(resultado.toUpperCase());
  } else if (opcao == 3) {
    resultado = conexao(() {
      print('Informe o seu salário: ');
      double salario = double.parse(stdin.readLineSync()!);
      print('Informe a quantidade de horas trabalhadas no mês: ');
      double hora = double.parse(stdin.readLineSync()!);

      double valorHoraExtra = (salario / hora) * 1.5;

      return 'O valor que será ganho por hora extra trabalhada é de: ${valorHoraExtra}';
    });
    print(resultado.toUpperCase());
  } else if (opcao == 4) {
    resultado = conexao(() {
      print('Informe o seu salário: ');
      double salario = double.parse(stdin.readLineSync()!);
      print('Informe a quantidade de horas trabalhadas no mês: ');
      double hora = double.parse(stdin.readLineSync()!);

      double valorHoraExtraNoturna = (salario / hora) * 1.7;

      return 'O valor que será ganho por hora extra noturna trabalhada é de: ${valorHoraExtraNoturna}';
    });
    print(resultado.toUpperCase());
  } else if (opcao == 5) {
    resultado = conexao(() {
      print('Informe o seu salário: ');
      double salario = double.parse(stdin.readLineSync()!);
      print('Informe a quantidade de horas trabalhadas no mês: ');
      double hora = double.parse(stdin.readLineSync()!);

      double valorHoraExtraFeriado = (salario / hora) * 2.0;

      return 'O valor que será ganho por hora extra em feriado trabalhada é de: ${valorHoraExtraFeriado}';
    });
    print(resultado.toUpperCase());
  } else if (opcao == 6) {
    resultado = conexao(() {
      print('Informe o seu salário: ');
      double salario = double.parse(stdin.readLineSync()!);
      print('Informe a quantidade de horas trabalhadas no mes: ');
      double horas = double.parse(stdin.readLineSync()!);
      print('Informe a quantidade de horas extras trabalhados: ');
      double horaExtra = double.parse(stdin.readLineSync()!);

      double valorHora = salario / horas;
      double salarioTotal = ((valorHora * horaExtra )* 1.5) + salario;

      return 'O valor do salário final é de: ${salarioTotal}';
    });
    print(resultado.toUpperCase());
  } else if (opcao == 7) {
    resultado = conexao(() {
      print('Informe o seu salário: ');
      double salario = double.parse(stdin.readLineSync()!);
      print('Informe a quantidade de horas trabalhadas no mes: ');
      double horas = double.parse(stdin.readLineSync()!);
      print('Informe a quantidade de horas extras trabalhados: ');
      double horaExtra = double.parse(stdin.readLineSync()!);

      double valorHora = salario / horas;
      double salarioTotal = ((valorHora * horaExtra )* 1.7) + salario;

      return 'O valor do salário final é de: ${salarioTotal}';
    });
    print(resultado.toUpperCase());
  } else if (opcao == 8) {
    resultado = conexao(() {
      print('Informe o seu salário: ');
      double salario = double.parse(stdin.readLineSync()!);
      print('Informe a quantidade de horas trabalhadas no mes: ');
      double horas = double.parse(stdin.readLineSync()!);
      print('Informe a quantidade de horas extras trabalhados: ');
      double horaExtra = double.parse(stdin.readLineSync()!);

      double valorHora = salario / horas;
      double salarioTotal = ((valorHora * horaExtra )* 2.0) + salario;

      return 'O valor do salário final é de: ${salarioTotal}';
    });
    print(resultado.toUpperCase());
  } else if (opcao == 9) {
    resultado = conexao(() {
      print('Informe o seu salário: ');
      double salario = double.parse(stdin.readLineSync()!);

      if(salario <= 1100){
        double salarioFinal = (salario - 0.075);
        return 'O valor do salário final é de: ${salarioFinal}';
      } else if (salario >= 1100.01 || salario <= 2203.48){
        double salarioFinal = (salario - 0.09);
        return 'O valor do salário final é de: ${salarioFinal}';
      } else if (salario >= 2203.49 || salario <= 3305.22){
        double salarioFinal = (salario - 0.12);
        return 'O valor do salário final é de: ${salarioFinal}';
      } else if (salario >= 3305.23 || salario <= 6433.57){
        double salarioFinal = (salario - 0.14);
        return 'O valor do salário final é de: ${salarioFinal}';
      }

    });
    print(resultado.toUpperCase());
  } else if (opcao == 10) {
    resultado = conexao(() {
      print('Informe o seu salário: ');
      double salario = double.parse(stdin.readLineSync()!);
      print('Informe a porcentagem de aumento do salario');
      double aumento = double.parse(stdin.readLineSync()!);

      double conversao = 100 / aumento;
      double salarioNovo = conversao * salario;
      
      return 'O valor do salário final é de: ${salarioNovo}';
    });
    print(resultado.toUpperCase());
  }
  } on FormatException catch (e) {
      print("Erro ao informar os valores!");
      print(e);
    } catch (e) {
      print("Valor incorreto!");
      print(e);
    }
    print(resultado.toUpperCase());
  
}

// Função que retorna o total de hora extra excedida. (2 horas é o tempo máximo permitido por lei)
// double horasExcedidas([double horaExtra = 2]) {
//   validarHorasExtras(horaExtra: horaExtra);
//   double horasExcedidas = (horaExtra - 2); 
//   return horasExcedidas;
// }

//Função que retorna o total de hora extra excedida porém usando o required. (2 horas é o tempo máximo permitido por lei)
double horasExcedidas({required double horaExtra}) {
  validarHorasExtras(horaExtra: horaExtra);
  double horasExcedidas = (horaExtra - 2); 
  return horasExcedidas;
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

//Função que soma o salário mais hora extra
double salarioHoraExtra({double horaExtra = 2, required double salario, required double horas} ){
  double valorHora = salario / horas;
  double salarioTotal = (valorHora * 1.5) + salario;
  return salarioTotal;
}

//Função que soma o salário mais hora extra noturna
double salarioHoraExtraNoturna(double salario, double horas, [double horaExtra = 0]){
  double valorHora = salario / horas;
  double salarioTotal = ((valorHora * horaExtra )* 1.7) + salario;
  return salarioTotal;
}

//Função que soma o salário mais hora extra em feriados
double salarioHoraExtraFeriado(double salario, double horas, double horaExtra){
  double valorHora = salario / horas;
  double salarioTotal = ((valorHora * horaExtra )* 2.0) + salario;
  return salarioTotal;
}

//Função que verifica o desconto de INSS de acordo com o seu salário
dynamic descontoINSS({required double salario}){
  if(salario <= 1100){
        double salarioFinal = (salario - 0.075);
        return salarioFinal;
      } else if (salario >= 1100.01 || salario <= 2203.48){
        double salarioFinal = (salario - 0.09);
        return salarioFinal;
      } else if (salario >= 2203.49 || salario <= 3305.22){
        double salarioFinal = (salario - 0.12);
        return salarioFinal;
      } else if (salario >= 3305.23 || salario <= 6433.57){
        double salarioFinal = (salario - 0.14);
        return salarioFinal;
      }
}

//Função que calcula o aumento do salário de acordo com a porcentagem
double aumentoSalario({required double salario, required double aumento}){
  validarAumento(salario: salario, aumento: aumento);
  double conversao = 100 / aumento;
  double salarioAumento = salario * conversao;
  return salarioAumento;
}


String conexao(Function funcao) {
  return funcao();
}

//////////////// Validação dos Dados ///////////////////////////
void validarHorasExtras({required double horaExtra}) {
  if (horaExtra <= 0 ) {
    throw Exception('Hora extra negativa não é válida!');
  }
}

void validarAumento({required double salario, required aumento}){
  if(aumento < 0 || salario < 0){
    throw Exception('Valores negativos para salário e para aumento não são válidos');
  }
  if(aumento == 0){
    throw Exception('Não houve aumento no salário');
  }
}
