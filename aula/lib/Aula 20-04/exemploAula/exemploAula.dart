// import 'dart:io';

// void show() {
//   print(''' MENU DE OPÇÕES
//   1- Bonificar salário
//   2- Descontar salário
//   3- Bonus no salário mais 10%
// ''');

//   print("Digite a opção escolhida: ");
//   var opcaoEscolhida = int.parse(stdin.readLineSync()!);

//   print("Digite o salário: ");
//   var salario = double.parse(stdin.readLineSync()!);

//   print("Digite o valor: ");
//   var valor = double.parse(stdin.readLineSync()!);

//   print(verificarOpcaoEscolhida(opcaoEscolhida, salario, valor));
// }

// String verificarOpcaoEscolhida(int opcao, double salario, double valor) {
//   if (opcao == 1) {
//     return bonificacaoSalario(salario, valor);
//   } else if (opcao == 2) {
//     return descontoSalario(salario, valor);
//   } else {
//     return encargosSalario(salario, valor);
//   }
// }

// String bonificacaoSalario(double salario, double valor) {
//   double salarioFinal = salario + valor;
//   return 'O salário final é de: ' + salarioFinal.toString();
// }

// String descontoSalario(double salario, double valor) {
//   double salarioFinal = salario - valor;
//   return 'O salário final é de: ' + salarioFinal.toString();
// }

// String encargosSalario(double salario, double valor) {
//   double encargo = valor - (valor * 0.1);
//   double salarioFinal = salario + encargo;
//   return 'O salário final é de: ' + salarioFinal.toString();
// }

import 'dart:io';

void show() {
  print(''' MENU DE OPÇÕES
  1- Bonificar salário
  2- Descontar salário
  3- Bonus no salário mais 10%
''');

  print("Digite a opção escolhida: ");
  var opcaoEscolhida = int.parse(stdin.readLineSync()!);

  print("Digite o salário: ");
  var salario = double.parse(stdin.readLineSync()!);

  print("Digite o valor: ");
  var valor = double.parse(stdin.readLineSync()!);

  var resultado = '';

  if (opcaoEscolhida == 1) {
    resultado = verificarEscolha(salario, valor, () => (salario + valor));
  } else if (opcaoEscolhida == 2) {
  } else {}
}

String verificarEscolha(double salario, double valor, Function acao) {
  return acao(salario, valor);
}

String bonificacaoSalario(double salario, double valor, Function acao) {
  double salarioFinal = salario + valor;
  return acao(salario, valor);
}

String descontoSalario(double salario, double valor) {
  double salarioFinal = salario - valor;
  return 'O salário final é de: ' + salarioFinal.toString();
}

String encargosSalario(double salario, double valor) {
  double encargo = valor - (valor * 0.1);
  double salarioFinal = salario + encargo;
  return 'O salário final é de: ' + salarioFinal.toString();
}
