
* Modificador 'late': Indica que o atributo será inicializado tardiamente e, por isso, caso um erro ocorra, só poderá ser identificado em tempo de execução
* Parâmetros: Parâmetros nomeados (envoltos em '{}'), por padrão, são nullable. Além disso, a ordem de inserção dos parâmetros não importa, diferente dos posicionais (esses devem seguir a ordem explícita que estão). Para dizer ao dart que vc quer que os parâmetros nomeados sejam requeridos, deve-se colocar na 'required' na frente do parâmetro
* Modificadores de Acesso:
    * Getters/Setters: Para declaração de getters e setters, é preciso explicitar o tipo (no caso do get), seguido de uma das palavras 'get' ou 'set' e o nome do atributo, da seguinte forma: '**String get nome => _nome**' e '**set nome(String nome) => _nome = nome**'
        * Get e Set inteligente: A notação de 'arrow function' é "burra", considerando que não há como fazer nenhum tratamento aos valores para inserir ou visualizar. Evitar getters e setters desnecessários
    * Public e Private: Em dart só existem os modificadores '**public**' e '**private**'. O '**public**' é implícito, já o '**private**' tem uma notação de *underline* a frente do nome da variável/função: '**String? _nome**'

<hr>

### Atividade 1

#### 1. O que significa o uso do operador ? em Dart ao declarar um atributo de uma classe? Explique com um exemplo.
<pre style='text-align: justify'>
R: O operador '?' (nullable) indica que esse atributo pode ser nulo, isto é, não precisa necessáriamente ser inicializado.

<b>Por exemplo:</b> Um formulário onde o usuário precisa informar seus dados e que possui o campo 'email'. Nem todos possuem email ou querem informar e pode ser que ele não seja necessário para o total funcionamento da aplicação, então pode ser nulo, deixando em aberto para o usuário se vai querer informar ou não
</pre>

#### 2. No código abaixo, há um erro. Qual é ele? Como corrigir?
```dart
class Carro {
  String? marca;
  int ano;
}
```

<pre style='text-align: justify'>
R: O erro em questão está na declaração do atributo 'ano'. O dart solicita que, se não for nulável, um atributo deve ser inicializado. Para corrigir bastaria adicionar o operador '?' ao lado de 'int' da declaração do atributo 'ano'.
</pre>

#### 3. Complete a implementação da classe Produto, garantindo que seus atributos (nome e preco) possam ser nulos:
```dart
class Produto {
  _______ nome;
  _______ preco;
}
```

<pre>
R: 

class Produto {
  String? nome;
  double? preco;
}
</pre>

#### 4. Modifique o código abaixo para garantir que, se nenhuma entrada for fornecida, os atributos recebam um valor padrão:
```dart
import 'dart:io';

void main() {
  Produto produto = Produto();
  print('Digite o nome do produto:');
  produto.nome = stdin.readLineSync();
  print('Digite o preço do produto:');
  produto.preco = double.tryParse(stdin.readLineSync() ?? '0');
  print('Produto: ${produto.nome}, Preço: ${produto.preco}');
}
class Produto {
  String? nome;
  double? preco;
}
```

<pre>
R: 

import 'dart:io';

void main() {
  Produto produto = Produto();
  print('Digite o nome do produto:');
  produto.nome = stdin.readLineSync();
  print('Digite o preço do produto:');
  produto.preco = double.tryParse(stdin.readLineSync() ?? '0');
  print('Produto: ${produto.nome}, Preço: ${produto.preco}');
}
class Produto {
  String nome = 'Mario';
  double preco = 2.5;
}
</pre>

#### 5. Explique a diferença entre ? e late na declaração de atributos em Dart.

<pre style='text-align: justify'>
R: O operador '?' permite que o atributo seja nulo e reconhece erros em tempo de compilação. O 'late', por outro lado, define que o valor daquele atributo será definido posteriormente e os erros só são detectados em tempo de execução.
</pre>

#### 6. No código abaixo, o que acontecerá se tentarmos acessar pessoa.idade antes de atribuir um valor? Justifique.
```dart
class Pessoa {
  late int idade;
}
```

<pre style='text-align: justify'>
R: 
</pre>

#### 7. Modifique a classe Funcionario abaixo para utilizar late corretamente e evitar problemas de inicialização:
```dart
class Funcionario {
  String nome;
  double salario;
}
```

#### 8. Escreva um construtor para a classe Aluno, garantindo que nome e nota sejam inicializados na criação do objeto.
```dart
class Aluno {
  String nome;
  double nota;
}
```

#### 9. Qual a vantagem de utilizar um construtor em vez de definir atributos com ? ou late?

#### 10. Modifique o código abaixo para utilizar parâmetros nomeados no construtor:
```dart
class Endereco {
  String rua;
  String cidade;
  
  Endereco(this.rua, this.cidade);
}
```

#### 11. O que são métodos get e set em Dart? Para que servem?

#### 12. Implemente um getter para a classe Retangulo que calcule a área automaticamente:
```dart
class Retangulo {
  double largura;
  double altura;
  
  Retangulo(this.largura, this.altura);
}

```

#### 13. Modifique a classe abaixo para que o set de idade não permita valores negativos:
```dart
class Pessoa {
  int idade;
  
  Pessoa(this.idade);
}
```

#### 14. Modifique a classe abaixo para que o set de idade não permita valores negativos:
```dart
class Pessoa {
  double _peso;
  
  double get peso => _peso;
  set peso(double novoPeso) {
    if (novoPeso > 0) _peso = novoPeso;
  }
  
  Pessoa(this._peso);
}
```

#### 15. Crie uma classe ContaBancaria que possua os atributos titular, saldo e um método depositar(double valor). O saldo deve ser alterado apenas pelo método.

#### 16. Modifique a classe ContaBancaria da questão anterior, adicionando um método sacar(double valor), garantindo que o saldo não fique negativo.

#### 17. Reescreva a classe Carro para utilizar construtores nomeados que permitam criar um carro novo (zeroKm) ou usado (usado com ano definido).

#### 18. Implemente uma classe Aluno que possua um método que retorne se o aluno está aprovado ou reprovado, considerando a média mínima de 7.

#### 19. Crie uma classe Produto que tenha um atributo preco e aplique um desconto fixo de #### 10% ao chamar um método aplicarDesconto().

#### 20. Crie um programa que utilize tudo o que foi aprendido, simulando um sistema de cadastro de pessoas, onde o usuário pode inserir nome, idade e peso, com validação dos dados antes de exibi-los na tela.