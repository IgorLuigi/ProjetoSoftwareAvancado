//01) O que é e para que serve o tratamento de erros?
// São procedimentos que são invocados implicitamente através da ocorrência de uma exceção. Eles permitem detectar erros e manipular estes erros, ou seja, tratá-los.

//02) Quais são as formas de tratamentos de erros?
// Os tratamentos de erro existente são o throws e try/cacth.

//03) Qual a diferença entre erro e exceção? 
// Erro é causado devido à falta de recursos do sistema, sendo algo irrecuperável. Uma exceção é causada por causa do código, este ja sendo recuperável.

//04) Qual a diferença entre exceção implícita (contornável) e explícita (incontornável)? 
// Excessão implícita são exceções que não precisam de tratamento e demonstram serem "contornáveis", já as excessões explícitas precisam serem tratadas e apresentam condições incontornáveis.

//05) O que são: (1) throwables; (2) Checked Exception; e (3) Unchecked (Runtime)?
// Throwable é a classe raiz de todas as exceções, onde apenas objetos dessa classe ou de suas classes derivadas podem ser geradas, propagadas e capturadas através do mecanismo de tratamento de exceções.
// Checked Exception são erros que ocorrem fora do controle do programa.
// Unchecked são erros que podem ser evitados se forem tratados e analisados pelo desenvolvedor.

//06) Quais são os tratamentos de erros existentes no Dart?
// Os tratamentos de erros existentes são o TRY, CATCH, ON e FINALLY.

//07) Quais são as principais exceções existentes no Dart?
// As exceções existentes no dart são: DefferedLoadException, FromatException, IntegerDivisionByZeroException, IOEException, 	IsolateSpawnException, Tempo esgotado.

//08) O que é e como funciona o try/catch? Em que caso devemos utilizar? Há uma camada da aplicação correta em utilizá-lo? Exemplifique.
// O que é para que serve o bloco try-catch? O que é e como utilizamos o objeto de exceção? O que é e como utilizamos o objeto Stack trace?
// Bloco try/catch serve para tratamento de exceções, tratamento de códigos que podem não ser totalmente atendidos e gerarem alguma exceção/erro.
// Um objeto de exceção é construído quando um erro ou uma situação anormal é encontrada durante a execução de um método.
// Um objeto Stack Trace ocorre quando não é possível capturar a exceção, consequentemente ocorrerá o encerramento anormal do programa, gerando uma sequência de chamadas que originou o erro.

//09) O que é e como funciona o on e final no tratamento de erros? Em que caso devemos utilizar? Há uma camada da aplicação correta em utilizá-lo? Exemplifique.
// A instrução "on" deve ser usada antes de ocorrer um erro. Ja a instrução "finally", deve ser utilizada para liberar os recursos um possível try.

//10) O que é e como funciona o rethrow? Em que caso devemos utilizar? Exemplifique.
// O rethrow relança uma exceção capturada anteriormente. Devemos utilizar o rethrow quando queremos relançar uma exception, onde é indicado usar o rethrow ao invés do throw.

//11) No try/catch, o que é captura de erros? Como é realizada - sintaxe? Quais são os tipos de capturas possíveis? Quais são as diferenças? 
// A captura de erros é quando o bloco try tenta processar o código que está dentro, sendo que se ocorrer uma exceção, a execução do código será pulada para a primeira captura do erro no bloco cacth.
// Os tipos de capturas possíveis são as capturas de exceção, onde ambas capturam os objetos de uma super classe. No entanto as consequências são diferentes, uma da um erro de compilação quando o mesmo tipo de exceção possui dois ou mais blocos catch diferentes associados a um bloco try e o outro gera um erro de compilação caso um bloco catch seja colocado antes de outros cacth que capturam a exceção.

//12) Explique e exemplifique o uso das cláusulas on e finally no bloco try-cath. 
//A cláusula on ela é executada antes da ocorrência de um erro, já a cláusula finally sempre fecha a sequência de comandos.

//13) É possível criar exceções específicas? Se sim, em que caso podem ser utilizas? Quais são os cuidados que devemos ter. Exemplifique.
// É possível utilizar e criar exceções específicas, porém, tudo depende da problemática, contexto e ambiente em que esta sendo desenvolvido.
























//14) Implemente o try-catch (com relevância) nas funções do seu projeto – pelo menos 5 funções. Faça o tratamento de erro específico e geral. 


//15) Analise o seu projeto e crie exceções específicas que facilite a localização e a manutenção do projeto.


//16) O que é e para que serve o Either? Qual a relação e qual a diferença com o try-cath? Faça um exemplo no contexto do seu projeto.