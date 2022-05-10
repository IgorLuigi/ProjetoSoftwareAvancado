// O que é e para que serve tratamento de erros?
//São procedimentos que são invocados implicitamente através da ocorrência de uma exceção. Eles permitem detectar erros e manipular estes erros, ou seja, tratá-los.

// Quais são as formas de tratamentos de erros?


// Qual a difereça entre erro e exceção?
//Erro é causado devido à falta de recursos do sistema, sendo algo irrecuperável. Uma exceção é causada por causa do código, este ja sendo recuperável.

// Qual a diferença entre excessão implícita (contornável) e explícita (incontornável)? 
// Excessão implícita são exceções que não precisam de tratamento e demonstram serem "contornáveis", já as excessões explícitas precisam serem tratadas e apresentam condições incontornáveis.

// O que são: (1) throwables; (2) Checked Exception; e (3) Unchecked (Runtime)?
// Throwable é a classe raiz de todas as exceções, onde apenas objetos dessa classe ou de suas classes derivadas podem ser geradas, propagadas e capturadas através do mecanismo de tratamento de exceções.
// Checked Exception são erros que ocorrem fora do controle do programa.
// Unchecked são erros que podem ser evitados se forem tratados e analisados pelo desenvolvedor.

// Quais são os tratamentos de erros existentes no dart?
// Os tratamentos de erros existentes são o TRY, CATCH, ON e FINALLY.

// Quais são as principais excessões existentes no dart?
// As exceções existentes no dart são: DefferedLoadException, FromatException, IntegerDivisionByZeroException, IOEException, 	IsolateSpawnException, Tempo esgotado.

// O que é para que serve o bloco try-catch? O que é e como utilizamos o objeto de exceção? O que é e como utilizamos o objeto Stack trace?
// Bloco try/catch serve para tratamento de exceções, tratamento de códigos que podem não ser totalmente atendidos e gerarem alguma exceção/erro.
// Um objeto de exceção é construído quando um erro ou uma situação anormal é encontrada durante a execução de um método.
// Um objeto Stack Trace ocorre quando não é possível capturar a exceção, consequentemente ocorrerá o encerramento anormal do programa, gerando uma sequência de chamadas que originou o erro.

// Explique e exemplifique o uso das cláusulas on e finally no bloco try-cath.

// Implemente o try-catch (com relevância) em nas funções do seu projeto.

// É possível criar exceções específicas? Se sim, em que caso podem ser utilizas?
// É possível utilizar e criar exceções específicas, porém, tudo depende da problemática, contexto e ambiente em que esta sendo desenvolvido.

// analise o seu projeto e crie exceções específicas que facilite a localizção e a manutenção do projeto.