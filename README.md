# curso_getit

Projeto para aprendizado e treinamento no uso do Get It

## Diferenças de uso de registro do GetIt

##### Singleton

Efetua um carregamento no momento que a aplicação é iniciada,
consumindo recursos desde o momento que o app é aberto é recomendavel utilizar apenas para o que for realmente necessario.
o uso da instancia é global e não é perdido ao finalizar a tela, somente ao utilizar o metodo Dispose()!

##### LazySingleton

Efetua um carregamento lento das dependecias, onde só passará a ser chamado quando a dependencia realmente for necessaria,
logo ela não ficará consumindo memória desnecessaria,
o uso da instancia é global e não é perdido ao finalizar a tela, somente ao utilizar o metodo Dispose()!

##### Factory

Toda a vez que for chamado esse tipo de uso de instancia do GetIt,
a mesma será gerada uma nova instancia então se precisa ser utilizado em diversos lugares com o mesmo dado ela não é a ideal,
pois sempre irá gerar dados novos ou em branco na chamada. Log não é necessario se preocupar com o uso do Dispose(),
pois a mesma já faz o uso do Dispose() ao finalizar sua função!


## Metodos de encerramento Dispose()

##### unregister
Utilizado para remover o registro de uma chamada especifica do GetIt,
porém sua utilização é muito pouco usual e quando utilizada pode ou irá quebrar a aplicação.
Caso queira utilizar novamente este metódo vai ser preciso seta-lo na mão no arquivo ou em alguma função desejada!
Segue exemplo de seu uso: 

```sh
getIt.unregister<SessionManager>();
getIt.registerSingleton(getIt());
getIt.registerLazySingleton(getIt());
```

##### resetLazySingleton
Utilizado para resetar ou reiniciar o registro de uma chamada especifica do GetIt,
sua utilização é muito mais comum e quando utilizada não possui o risco de quebrar a aplicação, tendo em vista que caso o metodo seja chamado,
a aplicação irá conseguir setar os valores desejados na classe.
Segue exemplo de seu uso:

```sh
getIt.resetLazySingleton<SessionManager>();
```

##### reset
Utilizado para resetar completamente todos as instancias do getIt,
sua utilização é novamente não muito comum e quando utilizada pois igualmente ao metodo UNREGISTER possui o risco de quebrar a aplicação,
e ser necessario a criação manual de todas as instancias da aplicação, logo geralmente não é nem utilizada!
Segue exemplo de seu uso:

```sh
getIt.reset();
```

##### funcionamento em comum

Todos os 3 metódos acima, podem utilizar uma função chamada dispose(), para que está execute alguma configuração especifica necessaria!
segue exemplo de uso:

```sh
@disposeMethod
void dispose() {
  print("dispose");
  # resto do código
}
```