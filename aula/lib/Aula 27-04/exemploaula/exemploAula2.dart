
import 'dart:io';

import 'package:aula/Aula%2020-04/exemplo-aula/atividade2.dart';
import 'package:aula/Aula%2020-04/exemploAula/exemploAula.dart';

void show() {
//Exercicio 1
  print('''
  1 - Verificar se o número é par
  2 - Verificar se o número é maior que zero
  3 - Verificar se o número é primo
  ''');

  print('Informe qual opção deseja: ');
  var opcaoEscolhida = int.parse(stdin.readLineSync()!);

  print("Digite o número: ");
  var numero = int.parse(stdin.readLineSync()!);
  
}
