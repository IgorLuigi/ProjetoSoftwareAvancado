import 'package:test/test.dart';
import 'package:aula/Aula 18-05/aula18-05.dart';

main() {
  group('Teste de hora extra máxima por dia \n\n', () {
    test('Teste para validar a quantidade de hora extra por dia', () {
      expect(
        verificarHorasMaximasPorDia(salario: 1000, horas: 1.5),
        1.5,
      );
    });
  });

  // group('Teste de verificação de horas trabalhadas\n\n', () {
  //   test('Teste da verificação dos valores das horas trabalhadas', () {
  //     expect(verificarValorHora(salario: 1000, horas: 200), 5);
  //   });
  // });

  // group('Teste de cálculo de variados tipos de horas extras \n\n', () {
  //   test('Teste de cálculo de hora extra comum', () {
  //     expect(
  //         verificarValorHoraExtraComum(
  //             salario: 1000, horas: 200, horaExtra: 1.5),
  //         7.5);
  //   });

  //   test('Teste de cálculo de hora extra noturna', () {
  //     expect(
  //         verificarValorHoraNoturna(salario: 1000, horas: 200, horaExtra: 1.7),
  //         8.5);
  //   });
  //  });

  // test('Teste de cálculo de hora extra em feriados', () {
  //   expect(
  //       verificarValorHoraExtraFeriado(salario: 1000, horas: 200, horaExtra: 2.0),
  //       10.0);
  // });
}
