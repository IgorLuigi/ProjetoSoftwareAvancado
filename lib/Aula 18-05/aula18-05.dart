import 'dart:io';

main() {
  stdout.write('Informe seu salario: ');
  double salario = double.parse(stdin.readLineSync()!);
  stdout.write('Informe as horas trabalhadas: ');
  double horas = double.parse(stdin.readLineSync()!);

  // var valorHora = verificarValorHora(salario: 1000, horas: 200);
  // print(valorHora);
  // var valorHoraExtraComum = verificarValorHoraExtraComum(salario, horas);
  // print(valorHoraExtraComum);

  // var valorHora1 = verificarValorHora1(salario: 1000, horas: 220);
  // print(valorHora1);

  // var valorHoraNoturna = verificarValorHoraNoturna(salario: 1000, horas: 220);
  // print(valorHoraNoturna);

  // var valorHoraNoturna1 = verificarValorHoraNoturna1(salario: 1000, horas: 220);
  // print(valorHoraNoturna1);

  // var valorHoraExtraFeriado = verificarValorHoraExtraFeriado(
  //   horas,
  //   salario: 1000,
  // );
  // print(valorHoraExtraFeriado);
}

double verificarValorHora({required double salario, required double horas}) {
  validarSalarioHora(salario: salario, horas: horas);
  double valorHora = salario / horas;
  return valorHora;
}

double verificarValorHoraExtraComum(
    {required double salario,
    required double horas,
    required double horaExtra}) {
  validarHoraExtraComum(salario: salario, horas: horas, horaExtra: horaExtra);
  double valorHora = (salario / horas) * 1.5;
  return valorHora;
}

double verificarValorHoraNoturna(
    {required double salario,
    required double horas,
    required double horaExtra}) {
  validarHoraExtraNoturna(salario: salario, horas: horas, horaExtra: horaExtra);
  double valorHoraNoturna = (salario / horas) * 1.7;
  return valorHoraNoturna;
}

// double verificarValorHoraExtraFeriado(
//     {required double salario,
//     required double horas,
//     required double horaExtra}) {
//   validarHoraExtraFeriados(
//       salario: salario, horas: horas, horaExtra: horaExtra);
//   double valorHoraExtraFeriado = (salario / horas) * 2.0;
//   return valorHoraExtraFeriado;
// }

// Validação de dados //
void validarSalarioHora({required double salario, required double horas}) {
  if (salario <= 0 || horas <= 0) {
    throw Exception('Valores incorretos, informe um valor válido.');
  }
}

// definir regra de negocio
void validarHoraExtraComum(
    {required double salario,
    required double horas,
    required double horaExtra}) {
  if (horaExtra != 1.5) {
    throw Exception('Não foi possível realizar o cálculo de hora extra!');
  }
}

void validarHoraExtraNoturna(
    {required double salario,
    required double horas,
    required double horaExtra}) {
  if (horaExtra != 1.7) {
    throw Exception(
        'Não foi possível realizar o cálculo de hora extra Noturna!');
  }

  void validarHoraExtraFeriados(
      {required double salario,
      required double horas,
      required double horaExtra}) {
    if (horaExtra != 2.0) {
      throw Exception(
          'Não foi possível realizar o cálculo de hora extra em Feriados!');
    }
  }
}
