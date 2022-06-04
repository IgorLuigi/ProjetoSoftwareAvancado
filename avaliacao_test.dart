import 'package:test/test.dart';
import 'package:aula/avaliação/avaliacao.dart';

main() {
  group('Teste de cálculo de horas extras\n', () {
    test(
        'Teste para validar a quantidade de horas extras trabalhadas além do permitido', () {
        expect(horasExcedidas(horaExtra: 4), 2);
    });
  });


  group('Teste de cálculo de aumento de salário\n', (){
    test(
      'Teste para verificar a porcentagem de aumento', (){
      expect(aumentoSalario(salario: 1000, aumento: 50.0), 2000.0);
      //Teste para verificar auemnto
    });
    
    //test(
      //'Teste para verificar a porcentagem de aumento', (){
      //expect(aumentoSalario(salario: 1000, aumento: -20), 2000.0);
      //Teste para verificar aumento com valor negativo
    //});

    //test(
      //'Teste para verificar a porcentagem de aumento', (){
      //expect(aumentoSalario(salario: 1000, aumento: 0), 2000.0);
      //Teste para verificar aumento com valor igual 0
    //});
  });
}
