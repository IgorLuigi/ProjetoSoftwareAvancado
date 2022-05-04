import 'dart:io';

void show() {

//Exercício 1
  adicionarSalario(1000.0, 1500.0, ePositivo);

//Exercício 2
  adicionarSalario(1000.0, 1500.0, (double numero) {
    if (numero > 0) {
      return true;
    } else {
      return false;
    }
  });
  
//Exercício 3
  adicionarSalario(1000.0, 1500.0, (double numero) => (numero > 0) ? true : false);

//Exercício 4
  adicionarSalario(1000.0, -3000.0, (double numero) {
    if (1300.0 < numero && numero > 0) {
      return true;
    } else {
      return false;
    }
  });

  adicionarSalario(1000.0, -3000.0,
      (double numero) => (1000.0 < numero && numero > 0) ? true : false);

//Exercício 5
  adicionarSalario(
      1000.0, 1500.0, (double numero) => (numero > 0) ? true : false);

//Exercício 6
  final controleTemperatura = <int>[36, 38, 0];
  controleTemperatura.forEach((int valor) {
    if (valor > 36) {
      print('Você esta com febre!');
    } else if (valor == 36) {
      print('Temperatura normal');
    } else {
      print('Informe um valor válido');
    }
  });

  final controleMedias = <double>[3, 6, 7];
  controleMedias.forEach((double valor) {
    if (valor >= 6) {
      print('Passou de ano');
    } else {
      print('Reprovou');
    }
  });

   final controleCopo500ml = <int>[501, 500, 400];
  controleCopo500ml.forEach((int valor) {
    if (valor > 500) {
      print('O copo está transbordando!');
    } else if (valor == 500) {
      print('O copo está cheio!');
    } else {
      print('O copo não está cheio!');
    }
  });


}

///////////////////////////////////////////////////////////////////////////////
void adicionarSalario(
    double salario, double valor, Function(double valor) validacao) {
  final eValido = validacao(valor);
  if (eValido) {
    final total = salario + valor;
    print(total);
  }
}

bool ePositivo(double numero) {
  if (numero > 0) {
    return true;
  } else {
    return false;
  }
}

