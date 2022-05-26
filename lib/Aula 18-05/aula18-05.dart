import 'dart:io';

main() {
  stdout.write('Informe seu salario: ');
  double salario = double.parse(stdin.readLineSync()!);
  stdout.write('Informe as horas trabalhadas: ');
  double horas = double.parse(stdin.readLineSync()!);
}

double verificarHorasMaximasPorDia(
    {required double salario, required double horas}) {
  validarHorasMaximasPorDia(salario: salario, horas: horas);
  return horas;
}

//Validar quantidade de horas máximas por dia
void validarHorasMaximasPorDia(
    {required salario, required double horas, double limiteHoras = 2.0}) {
  if (horas <= 0 || limiteHoras > 2.0) {
    throw Exception(
        "As horas devem ser maiores que zero e menores que duas horas diárias.");
  }
}

// fazer duas funções e o máximo de testes possiveis












































// double verificarValorHora({required double salario, required double horas}) {
//   validarSalarioHora(salario: salario, horas: horas);
//   double valorHora = salario / horas;
//   return valorHora;
// }

// double verificarValorHoraExtraComum(
//     {required double salario,
//     required double horas,
//     required double horaExtra}) {
//   validarHoraExtraComum(salario: salario, horas: horas, horaExtra: horaExtra);
//   double valorHora = (salario / horas) * 1.5;
//   return valorHora;
// }

// double verificarValorHoraNoturna(
//     {required double salario,
//     required double horas,
//     required double horaExtra}) {
//   validarHoraExtraNoturna(salario: salario, horas: horas, horaExtra: horaExtra);
//   double valorHoraNoturna = (salario / horas) * 1.7;
//   return valorHoraNoturna;
// }


// // Validação de dados //
// void validarSalarioHora({required double salario, required double horas}) {
//   if (salario <= 0 || horas <= 0) {
//     throw Exception('Valores incorretos, informe um valor válido.');
//   }
// }

// // definir regra de negocio
// void validarHoraExtraComum(
//     {required double salario,
//     required double horas,
//     required double horaExtra}) {
//   if (horaExtra != 1.5) {
//     throw Exception('Não foi possível realizar o cálculo de hora extra!');
//   }
// }

// void validarHoraExtraNoturna(
//     {required double salario,
//     required double horas,
//     required double horaExtra}) {
//   if (horaExtra != 1.7) {
//     throw Exception(
//         'Não foi possível realizar o cálculo de hora extra Noturna!');
//   }

//   void validarHoraExtraFeriados(
//       {required double salario,
//       required double horas,
//       required double horaExtra}) {
//     if (horaExtra != 2.0) {
//       throw Exception(
//           'Não foi possível realizar o cálculo de hora extra em Feriados!');
//     }
//   }
//}
