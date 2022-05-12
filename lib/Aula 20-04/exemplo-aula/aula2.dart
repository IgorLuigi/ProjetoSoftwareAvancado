//objetivo: entender parametro de funções

String verificarAprovacaoCompleto(int opcao, double nota1, double nota2) {
  if (opcao == 1) {
    //aprovação pela média
    double media = (nota1 + nota2) / 2;
    if (media > 6) {
      return 'aprovado';
    } else {
      return 'reprovado';
    }
  } else if (opcao == 2) {
    //aprovação pela maior nota
    double maior = nota1;
    if (nota2 > nota1) {
      maior = nota2;
    }
    if (maior >= 6) {
      return 'aprovado';
    } else {
      return 'reprovado';
    }
  } else {
    //aprovação pela menor nota
    double menor = nota1;
    if (nota2 < nota1) {
      menor = nota2;
    }
    if (menor >= 6) {
      return 'aprovado';
    } else {
      return 'reprocado';
    }
  }
}


void show() {
  verificarAprovacao(10, 5, verificacaoPelaMedia);
}

String verificarAprovacao(double nota1, double nota2, Function acao) {
  return acao(nota1, nota2);
}

String verificacaoPelaMedia(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  if (media > 6) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}

String verificarPelaMaiorNota(double nota1, double nota2) {
  double maior = nota1;
  if (nota2 > nota1) {
    maior = nota2;
  }
  if (maior >= 6) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}

String verificarpelaMenorNota(double nota1, double nota2) {
  double menor = nota1;
  if (nota2 < nota1) {
    menor = nota2;
  }
  if (menor >= 6) {
    return 'aprovado';
  } else {
    return 'reprocado';
  }
}

////////////////////////////////////////////////////////////////////////////////


