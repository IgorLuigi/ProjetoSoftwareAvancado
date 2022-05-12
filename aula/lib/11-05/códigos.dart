import 'dart:io';

void show(){
  try{ 
      String menu = ('''
      MENU DE CÁLCULO DE HORAS EXTRA
      1 - Cálculo de quanto vale a sua hora
      2 - Cálculo de quanto vale sua hora extra
      3 - Cálculo de quanto vale sua hora extra noturna
      4 - Cálculo de quanto vale sua hora extra em feriados
      5 - Quanto voce ganha por 'n' dias trabalhados
      ''');
      print(menu.toUpperCase());
      int opcao = int.parse(stdin.readLineSync()!);
      String escolha = '';

      try{
        if(opcao == 1) {
          escolha = interface (() {
            print('Informe seu salario: ');
            double salario = double.parse(stdin.readLineSync()!);
            print('Informe a quantidade de horas trabalhadas: ');
            int horas = int.parse(stdin.readLineSync()!);

            double valorHora = salario / horas;
            print( 'O valor da sua hora é de: ${(valorHora)}');
            return 'O valor da sua hora é de: ${(valorHora)}';
          });
        }
      } on FormatException catch (e) {
        print("Erro ao informas os valores solicitados");
        print(e);
      } catch (e) {
        print('Valor que foi inserido esta incorreto');
        print(e);
      }
      try{
        if(opcao == 2) {
          escolha = interface (() {
            print('Informe seu salario: ');
            double salario = double.parse(stdin.readLineSync()!);
            print('Informe a quantidade de horas trabalhadas: ');
            int horas = int.parse(stdin.readLineSync()!);

            double valorHoraExtraComum = (salario / horas) * 1.5;
            print( 'O valor da sua hora é de: ${(valorHoraExtraComum)}');
            return 'O valor da sua hora é de: ${(valorHoraExtraComum)}' ;
          });
        }
      } on FormatException catch (e) {
        print("Erro ao informas os valores solicitados");
        print(e);
      } catch (e) {
        print('Valor que foi inserido esta incorreto');
        print(e);
      }
      try{
        if(opcao == 3) {
          escolha = interface (() {
            print('Informe seu salario: ');
            double salario = double.parse(stdin.readLineSync()!);
            print('Informe a quantidade de horas trabalhadas: ');
            int horas = int.parse(stdin.readLineSync()!);

            double valorHoraNoturna = (salario / horas) * 1.7;
            print( 'O valor da sua hora é de: ${(valorHoraNoturna)}');
            return 'O valor da sua hora é de: ${(valorHoraNoturna)}' ;
          });
        }
      } on FormatException catch (e) {
        print("Erro ao informas os valores solicitados");
        print(e);
      } catch (e) {
        print('Valor que foi inserido esta incorreto');
        print(e);
      }
      try{
        if(opcao == 4) {
          escolha = interface (() {
            print('Informe seu salario: ');
            double salario = double.parse(stdin.readLineSync()!);
            print('Informe a quantidade de horas trabalhadas: ');
            int horas = int.parse(stdin.readLineSync()!);

            double valorHoraExtraFeriado = (salario / horas) * 2.0;
             print( 'O valor da sua hora é de: ${(valorHoraExtraFeriado)}');
            return 'O valor da sua hora é de: ${(valorHoraExtraFeriado)}' ;
          });
        }
      } on FormatException catch (e) {
        print("Erro ao informas os valores solicitados");
        print(e);
      } catch (e) {
        print('Valor que foi inserido esta incorreto');
        print(e);
      }
      try{
        if(opcao == 5) {
          escolha = interface (() {
            print('Informe seu salario: ');
            double salario = double.parse(stdin.readLineSync()!);
            print('Informe a quantidade de horas trabalhadas: ');
            int horas = int.parse(stdin.readLineSync()!);
            print('Informe a quantidade de dias trabalhados: ');
            int dias = int.parse(stdin.readLineSync()!);

            double valorDiasTrabalhados = (salario / horas) * dias;
             print( 'O valor dos "N" dias são: ${(valorDiasTrabalhados)}');
            return 'O valor dos "N" dias são: ${(valorDiasTrabalhados)}' ;
          });
        }
      } on FormatException catch (e) {
        print("Erro ao informas os valores solicitados");
        print(e);
      } catch (e) {
        print('Valor que foi inserido esta incorreto');
        print(e);
      }
  } catch (f) {
    print("Um erro ocorreu dentro das funções");
    print(f);
  }
}



String interface(Function Funcao) {
  return Funcao();
}


double valorHora(double salario, double horas){
  double valorHora = salario / horas;
  return valorHora;
}

double valorHoraExtraComum(double salario, double horas){
  double valorHoraExtraComum = (salario / horas) * 1.5;
  return valorHoraExtraComum;
}

double valorHoraExtraNoturna(double salario, double horas){
  double valorHoraExtraNoturna = (salario / horas) * 1.7;
  return valorHoraExtraNoturna;
}

double valorHoraExtraFeriado(double salario, double horas){
  double valorHoraExtraFeriado = (salario / horas) * 2.0;
  return valorHoraExtraFeriado;
}

double valorDiasTrabalhados(double salario, double horas, int dias){
  double valorDiasTrabalhados = (salario / horas) * dias;
  return valorDiasTrabalhados;
}







// void show() {
//   try {
//       stdout.write('Informe seu salario: ');
//       double salario = double.parse(stdin.readLineSync()!);
//       stdout.write('Informe as horas trabalhadas: ');
//       double horas = double.parse(stdin.readLineSync()!);

//       var valorHora = verificarValorHora(salario, horas);
//       print(valorHora);
//       var valorHoraExtraComum = verificarValorHoraExtraComum(salario, horas);
//       print(valorHoraExtraComum);

//       var valorHora1 = verificarValorHora1(salario: 1000, horas: 220);
//       print(valorHora1);

//       var valorHoraNoturna = verificarValorHoraNoturna(salario: 1000, horas: 220);
//       print(valorHoraNoturna);

//       var valorHoraNoturna1 = verificarValorHoraNoturna1(salario: 1000, horas: 220);
//       print(valorHoraNoturna1);

//       var valorHoraExtraFeriado = verificarValorHoraExtraFeriado(horas, salario: 1000,);
//       print(valorHoraExtraFeriado);
//     } catch(f) {
//     print("Ocorreu um erro nas funções");
//     print(f);
//     }

//     // 5) Duas funções com parâmetros posicionais opcionais (valor padrão);
//     String verificarValorHora([double salario = 1000, double horas = 220]) {
//       double valorHora = salario / horas;
//       return 'O valor da sua hora é de: ' + valorHora.toString();
//     }

//     String verificarValorHoraExtraComum(double salario, double horas,
//         [double horaExtra = 1.5]) {
//       double valorHora = (salario / horas) * 1.5;
//       return 'O valor da sua hora é de: ' + valorHora.toString();
//     }

//     // 6) Uma função com parâmetros nomeados obrigatórios;
//     String verificarValorHora1({required double salario, required double horas}) {
//       double valorHora1 = salario / horas;
//       return 'O valor da sua hora é de: ' + valorHora1.toString();
//     }

//     // 7) Uma função com parâmetros nomeados opcionais;
//     String verificarValorHoraNoturna({double salario = 1000, double horas = 220}) {
//       double valorHoraNoturna = (salario / horas) * 1.7;
//       return 'O valor da sua hora é de: ' + valorHoraNoturna.toString();
//     }

//     // 8) Uma função com parâmetros nomeados obrigatórios e opcionais;
//     String verificarValorHoraNoturna1(
//         {required double salario, double horas = 220}) {
//       double valorHoraNoturna1 = (salario / horas) * 1.7;
//       return 'O valor da sua hora é de: ' + valorHoraNoturna1.toString();
//     }

//     // 9) Uma única função com parâmetros nomeados e posicionais;

//     String verificarValorHoraExtraFeriado(double horas, {required double salario}) {
//       double valorHoraExtraFeriado = (salario / horas) * 2.0;
//       return 'O valor da sua hora é de: ' + valorHoraExtraFeriado.toString();
//     }
// }

