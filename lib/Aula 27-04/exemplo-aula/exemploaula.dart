//Parametros opicionais e parametros nomeados

//Parametro opcional
//Não pode ser alterado a ordem dos parametros
String verificarAprovacao(double nota1, double nota2, [double mediaAprovacao = 6]) {
  var media = (nota1 + nota2) / 2;
  if (media >= mediaAprovacao) {
    return 'Aprovado';
  } else {
    return 'Reprovado';
  }
}

//Parametro nomeado
//Pode ser alterado a ordem dos parametros por conta de eles terem "nomes"
String verificarAprovacaoParamNomeado({required double nota1, required double nota2, required double mediaAprovacao}) {
  var media = (nota1 + nota2) / 2;
  if (media >= mediaAprovacao) {
    return 'Aprovado';
  } else {
    return 'Reprovado';
  }
}
