import 'package:test/test.dart';
import 'package:aula/avaliação/avaliacao.dart';

main() {
  group('Teste de cálculo de horas extras\n', () {
    test(
        'Teste para validar a quantidade de horas extras trabalhadas além do permitido', () {
        expect(validarHorasExtras(horaExtra: 4), 4
      );
    });
  });
}
