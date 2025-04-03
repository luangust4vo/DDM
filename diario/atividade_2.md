# Atividade 2

## Estrutura de Classes
```dart
// Classe de Fornecedor
class Fornecedor {
  String nome;
  String cnpj;
  String endereco;
  void Function() acaoFornecedor;

  Fornecedor(this.nome, this.cnpj, this.endereco, {required this.acaoFornecedor});
}

// Classe de Funcionario
class Funcionario {
  String nome;
  String cargo;
  double salario;
  void Function(String) calculaSalarioBonus;

  Funcionario(this.nome, this.cargo, this.salario, {required this.calculaSalarioBonus});
}

// Classe de Departamento
class Departamento {
  String nome;
  Funcionario gerente;
  void Function() acaoDepartamento;

  Departamento(this.nome, this.gerente, {required this.acaoDepartamento});
}

// Classe de Cliente
class Cliente {
  String nome;
  String endereco;
  void Function() atualizarEndereco;

  Cliente(this.nome, {required this.endereco, required this.atualizarEndereco});
}

// Classe de Cidade
class Cidade {
  String nome;
  String estado;
  void Function(String) alterarEstado;

  Cidade(this.nome, this.estado, {required this.alterarEstado});
}

// Classe de Estado
class Estado {
  String nome;
  String pais;
  void Function() mudarPais;

  Estado(this.nome, {required this.pais, required this.mudarPais});
}

// Classe de País
class Pais {
  String nome;
  void Function() exibirPais;

  Pais(this.nome, {required this.exibirPais});
}

// Classe de Pedido de Venda
class PedidoVenda {
  Cliente cliente;
  Produto produto;
  int quantidade;
  void Function() concluirVenda;

  PedidoVenda(this.cliente, this.produto, this.quantidade, {required this.concluirVenda});
}

// Classe de Pedido de Compra
class PedidoCompra {
  Fornecedor fornecedor;
  Produto produto;
  int quantidade;
  void Function() realizarCompra;

  PedidoCompra(this.fornecedor, this.produto, this.quantidade, {required this.realizarCompra});
}

// Classe de Produto
class Produto {
  String nome;
  double preco;
  TipoProduto tipo;
  CategoriaProduto categoria;
  UnidadeMedida unidadeMedida;
  Fornecedor fornecedor;
  void Function() ajustarPreco;

  Produto(this.nome, this.preco, this.tipo, this.categoria, {required this.unidadeMedida, required this.fornecedor, required this.ajustarPreco});
}

// Classe de Tipo de Produto
class TipoProduto {
  String descricao;
  void Function() exibirTipo;

  TipoProduto(this.descricao, {required this.exibirTipo});
}

// Classe de Categoria de Produto
class CategoriaProduto {
  String nome;
  String descricao;
  void Function() exibirCategoria;

  CategoriaProduto(this.nome, this.descricao, {required this.exibirCategoria});
}

// Classe de Unidade de Medida
class UnidadeMedida {
  String nome;
  String simbolo;
  void Function() atualizarUnidade;

  UnidadeMedida(this.nome, {required this.simbolo, required this.atualizarUnidade});
}

// Classe de Produto com Estoque
class ProdutoEstoque {
  Produto produto;
  int quantidade;
  void Function() ajustarEstoque;

  ProdutoEstoque(this.produto, this.quantidade, {required this.ajustarEstoque});
}

// Classe de Preço de Produto
class PrecoProduto {
  Produto produto;
  double precoVenda;
  double precoCusto;
  double margemLucro;
  void Function() calcularMargemLucro;

  PrecoProduto(this.produto, this.precoVenda, this.precoCusto, this.margemLucro, {required this.calcularMargemLucro});
}

// Classe de Histórico de Preço
class HistoricoPreco {
  Produto produto;
  DateTime dataAlteracao;
  double precoAntigo;
  double precoNovo;
  void Function() registrarAlteracao;

  HistoricoPreco(this.produto, this.dataAlteracao, this.precoAntigo, this.precoNovo, {required this.registrarAlteracao});
}

// Classe de Produto com Desconto
class ProdutoDesconto {
  Produto produto;
  double percentualDesconto;
  DateTime dataInicio;
  DateTime dataFim;
  void Function() aplicarDesconto;

  ProdutoDesconto(this.produto, this.percentualDesconto, this.dataInicio, this.dataFim, {required this.aplicarDesconto});
}

// Classe de Produto com Lote
class ProdutoLote {
  Produto produto;
  String numeroLote;
  DateTime dataFabricacao;
  DateTime dataValidade;
  void Function() verificarLote;

  ProdutoLote(this.produto, this.numeroLote, this.dataFabricacao, this.dataValidade, {required this.verificarLote});
}

// Classe de Produto com Localização
class ProdutoLocalizacao {
  Produto produto;
  String corredor;
  String prateleira;
  void Function() atualizarLocalizacao;

  ProdutoLocalizacao(this.produto, this.corredor, this.prateleira, {required this.atualizarLocalizacao});
}

// Classe de Produto com Observações
class ProdutoObservacao {
  Produto produto;
  String observacao;
  void Function() registrarObservacao;

  ProdutoObservacao(this.produto, this.observacao, {required this.registrarObservacao});
}

// Classe de Garantia do Produto
class GarantiaProduto {
  Produto produto;
  int anosGarantia;
  String tipoGarantia;
  void Function() ativarGarantia;

  GarantiaProduto(this.produto, this.anosGarantia, this.tipoGarantia, {required this.ativarGarantia});
}

// Classe de Produto com Status de Disponibilidade
class ProdutoDisponibilidade {
  Produto produto;
  bool disponivel;
  String status;
  void Function() atualizarStatus;

  ProdutoDisponibilidade(this.produto, this.disponivel, this.status, {required this.atualizarStatus});
}

// Classe de Produto com Avaliação
class AvaliacaoProduto {
  Produto produto;
  int numeroEstrelas;
  String comentario;
  void Function() registrarAvaliacao;

  AvaliacaoProduto(this.produto, this.numeroEstrelas, this.comentario, {required this.registrarAvaliacao});
}

// Classe de Produto com Imagem
class ImagemProduto {
  Produto produto;
  String urlImagem;
  void Function() exibirImagem;

  ImagemProduto(this.produto, {required this.urlImagem, required this.exibirImagem});
}

// Classe de Produto com Tamanho
class TamanhoProduto {
  Produto produto;
  String tamanho;
  void Function() atualizarTamanho;

  TamanhoProduto(this.produto, {required this.tamanho, required this.atualizarTamanho});
}

// Classe de Produto com Cor
class CorProduto {
  Produto produto;
  String cor;
  void Function() alterarCor;

  CorProduto(this.produto, {required this.cor, required this.alterarCor});
}

// Classe de Produto com Peso
class PesoProduto {
  Produto produto;
  double peso;
  void Function() atualizarPeso;

  PesoProduto(this.produto, {required this.peso, required this.atualizarPeso});
}

// Classe de Produto com Volume
class VolumeProduto {
  Produto produto;
  double volume;
  void Function() ajustarVolume;

  VolumeProduto(this.produto, {required this.volume, required this.ajustarVolume});
}

// Classe de Produto com Embalagem
class EmbalagemProduto {
  Produto produto;
  String tipoEmbalagem;
  double pesoEmbalagem;
  void Function() alterarEmbalagem;

  EmbalagemProduto(this.produto, {required this.tipoEmbalagem, required this.pesoEmbalagem, required this.alterarEmbalagem});
}

// Classe de Estoque
class Estoque {
  Produto produto;
  int quantidade;
  void Function() atualizarEstoque;

  Estoque(this.produto, this.quantidade, {required this.atualizarEstoque});
}

// Classe de Venda
class Venda {
  Cliente cliente;
  Produto produto;
  int quantidade;
  DateTime dataVenda;
  void Function() registrarVenda;

  Venda(this.cliente, this.produto, this.quantidade, this.dataVenda, {required this.registrarVenda});
}

// Classe de Compra
class Compra {
  Fornecedor fornecedor;
  Produto produto;
  int quantidade;
  DateTime dataCompra;
  void Function() registrarCompra;

  Compra(this.fornecedor, this.produto, this.quantidade, this.dataCompra, {required this.registrarCompra});
}

// Classe de Compra com Lote
class CompraLote {
  Compra compra;
  String numeroLote;
  DateTime dataEntrega;
  void Function() verificarLoteCompra;

  CompraLote(this.compra, this.numeroLote, this.dataEntrega, {required this.verificarLoteCompra});
}

// Classe de Pedido de Venda com Entrega
class PedidoVendaEntrega {
  PedidoVenda pedidoVenda;
  DateTime dataEntrega;
  String enderecoEntrega;
  void Function() organizarEntrega;

  PedidoVendaEntrega(this.pedidoVenda, this.dataEntrega, this.enderecoEntrega, {required this.organizarEntrega});
}

// Classe de Pedido de Compra com Frete
class PedidoCompraFrete {
  PedidoCompra pedidoCompra;
  double valorFrete;
  DateTime dataEnvio;
  void Function() calcularFrete;

  PedidoCompraFrete(this.pedidoCompra, this.valorFrete, this.dataEnvio, {required this.calcularFrete});
}

// Classe de Pedido de Compra com Pagamento
class PedidoCompraPagamento {
  PedidoCompra pedidoCompra;
  double valorPago;
  DateTime data
```

### Exemplos de exercícios:

Exercício 1 – Nível Fácil: Criar um Fornecedor com Referência Anônima
Enunciado: Crie um objeto do tipo Fornecedor usando referência anônima e parâmetros nomeados. Em seguida, exiba o nome do fornecedor e execute a ação associada.

```dart
void main() {
  // Cria um objeto Fornecedor utilizando referência anônima para a função 'acaoFornecedor'
  var fornecedor = Fornecedor(
    "Fornecedor A", 
    "00.000.000/0001-00", 
    "Rua dos Fornecedores, 123",
    acaoFornecedor: () {
      // Função anônima para simular uma ação do fornecedor
      print("Ação do Fornecedor A executada!");
    }
  );
  
  // Exibe o nome do fornecedor
  print("Fornecedor: ${fornecedor.nome}");
  
  // Executa a ação anônima associada
  fornecedor.acaoFornecedor();
}
```

Exercício 2 – Nível Fácil: Criar um Produto com Referência Anônima
Enunciado: Crie um objeto do tipo Produto com referência anônima, utilizando classes auxiliares para tipo, categoria e unidade de medida. Em seguida, exiba o nome e o preço do produto e execute a função de ajuste de preço.

```dart
void main() {
  // Cria um objeto TipoProduto com função anônima para exibir o tipo
  var tipo = TipoProduto("Eletrônico", exibirTipo: () {
    print("Tipo: Eletrônico");
  });
  
  // Cria um objeto CategoriaProduto com função anônima para exibir a categoria
  var categoria = CategoriaProduto("Informática", "Produtos de TI", exibirCategoria: () {
    print("Categoria: Informática");
  });
  
  // Cria um objeto UnidadeMedida com função anônima para atualizar a unidade
  var unidade = UnidadeMedida("Unidade", simbolo: "UN", atualizarUnidade: () {
    print("Unidade atualizada");
  });
  
  // Cria um objeto Fornecedor necessário para o produto
  var fornecedor = Fornecedor(
    "Fornecedor X", 
    "11.111.111/0001-11", 
    "Av. dos Fornecedores, 456",
    acaoFornecedor: () {
      print("Fornecedor X acionado");
    }
  );
  
  // Cria o objeto Produto utilizando referência anônima para a função ajustarPreco
  var produto = Produto(
    "Notebook", 
    3500.00, 
    tipo, 
    categoria, 
    unidade: unidade, 
    fornecedor: fornecedor, 
    ajustarPreco: () {
      print("Preço do Notebook ajustado!");
    }
  );
  
  // Exibe informações do produto
  print("Produto: ${produto.nome} - R\$${produto.preco}");
  
  // Executa a função anônima para ajuste de preço
  produto.ajustarPreco();
}

// Este exercício reforça o uso de classes auxiliares e parâmetros nomeados.
// Demonstra a composição de um objeto complexo (Produto) e a execução de uma função anônima (ajustarPreco).
```

Exercício 3 – Nível Médio: Criar um Pedido de Venda com Referência Anônima
Enunciado: Crie um objeto PedidoVenda com referência anônima, que contenha um objeto Cliente e um objeto Produto. Utilize funções anônimas para concluir a venda. Exiba os detalhes do pedido e execute a função de conclusão.

```dart
void main() {
  // Cria um Cliente utilizando parâmetros nomeados
  var cliente = Cliente(
    "Cliente B", 
    "Rua dos Clientes, 789", 
    atualizarEndereco: () {
      print("Endereço do Cliente B atualizado");
    }
  );
  
  // Cria objetos auxiliares para o Produto
  var tipo = TipoProduto("Eletrodoméstico", exibirTipo: () {
    print("Tipo: Eletrodoméstico");
  });
  var categoria = CategoriaProduto("Cozinha", "Produtos para cozinha", exibirCategoria: () {
    print("Categoria: Cozinha");
  });
  var unidade = UnidadeMedida("Unidade", simbolo: "UN", atualizarUnidade: () {
    print("Unidade atualizada");
  });
  var fornecedor = Fornecedor(
    "Fornecedor Y", 
    "22.222.222/0001-22", 
    "Av. dos Fornecedores, 101", 
    acaoFornecedor: () {
      print("Fornecedor Y acionado");
    }
  );
  
  // Cria um Produto com função anônima para ajustar o preço
  var produto = Produto(
    "Geladeira", 
    2500.00, 
    tipo, 
    categoria, 
    unidade: unidade, 
    fornecedor: fornecedor, 
    ajustarPreco: () {
      print("Preço da Geladeira ajustado!");
    }
  );
  
  // Cria o PedidoVenda com função anônima para concluir a venda
  var pedidoVenda = PedidoVenda(
    cliente, 
    produto, 
    1, 
    concluirVenda: () {
      print("Venda concluída com sucesso!");
    }
  );
  
  // Exibe detalhes do pedido
  print("Pedido de Venda:");
  print("Cliente: ${pedidoVenda.cliente.nome}");
  print("Produto: ${pedidoVenda.produto.nome}");
  print("Quantidade: ${pedidoVenda.quantidade}");
  
  // Executa a função de conclusão da venda
  pedidoVenda.concluirVenda();
}

//Neste exercício, o aluno compõe objetos aninhados (Cliente e Produto) dentro de um Pedido de Venda.
//A função concluirVenda simula o processamento final do pedido.
```

Exercício 4 – Nível Avançado: Criar um Pedido de Compra com Frete e Pagamento Enunciado: Crie um objeto PedidoCompraFrete que contenha um objeto PedidoCompra, com um Fornecedor e Produto, e inclua uma função anônima para calcular o frete. Em seguida, crie um objeto PedidoCompraPagamento para simular o pagamento do pedido. Exiba as informações e execute as funções anônimas.

```dart
void main() {
  // Cria um Fornecedor
  var fornecedor = Fornecedor(
    "Fornecedor Z", 
    "33.333.333/0001-33", 
    "Rua dos Fornecedores, 202", 
    acaoFornecedor: () {
      print("Fornecedor Z acionado");
    }
  );
  
  // Cria objetos auxiliares para o Produto
  var tipo = TipoProduto("Móvel", exibirTipo: () {
    print("Tipo: Móvel");
  });
  var categoria = CategoriaProduto("Escritório", "Móveis para escritório", exibirCategoria: () {
    print("Categoria: Escritório");
  });
  var unidade = UnidadeMedida("Unidade", simbolo: "UN", atualizarUnidade: () {
    print("Unidade atualizada");
  });
  
  // Cria um Produto com função anônima para ajustar o preço
  var produto = Produto(
    "Mesa de Escritório", 
    800.00, 
    tipo, 
    categoria, 
    unidade: unidade, 
    fornecedor: fornecedor, 
    ajustarPreco: () {
      print("Preço da Mesa de Escritório ajustado!");
    }
  );
  
  // Cria um PedidoCompra com função anônima para realizar a compra
  var pedidoCompra = PedidoCompra(
    fornecedor, 
    produto, 
    5, 
    realizarCompra: () {
      print("Pedido de Compra realizado com sucesso!");
    }
  );
  
  // Cria um objeto PedidoCompraFrete com função anônima para calcular o frete
  var pedidoCompraFrete = PedidoCompraFrete(
    pedidoCompra, 
    150.00, 
    DateTime.now(), 
    calcularFrete: () {
      print("Frete calculado com base na distância e quantidade.");
    }
  );
  
  // Cria um objeto PedidoCompraPagamento com função anônima para realizar o pagamento
  var pedidoCompraPagamento = PedidoCompraPagamento(
    pedidoCompra, 
    4500.00, 
    DateTime.now(), 
    realizarPagamentoCompra: () {
      print("Pagamento do Pedido de Compra efetuado!");
    }
  );
  
  // Exibe informações
  print("Pedido de Compra com Frete:");
  print("Fornecedor: ${pedidoCompra.fornecedor.nome}");
  print("Produto: ${pedidoCompra.produto.nome}");
  print("Quantidade: ${pedidoCompra.quantidade}");
  
  // Executa as funções anônimas
  pedidoCompraFrete.calcularFrete();
  pedidoCompraPagamento.realizarPagamentoCompra();
}

// Este exercício é mais avançado e envolve a criação de objetos aninhados (PedidoCompra, PedidoCompraFrete e PedidoCompraPagamento)
// com funções anônimas para  calcular frete e processar pagamento.
// Cada função anônima é executada para simular ações reais no fluxo de compra.
```

Exercício 5 – Nível Avançado: Criar um Pedido de Venda com Entrega e Ações Compostas Enunciado: Crie um objeto PedidoVendaEntrega que contenha um PedidoVenda, que por sua vez contém um Cliente com endereço completo e um Produto. Inclua funções anônimas para organizar a entrega e concluir a venda. Exiba o cenário completo e execute as funções anônimas para simular o fluxo de entrega.

```dart
void main() {
  // Cria o objeto Cliente com endereço detalhado
  var cliente = Cliente(
    "Cliente C", 
    "Rua dos Clientes, 987", 
    atualizarEndereco: () {
      print("Endereço do Cliente C atualizado!");
    }
  );
  
  // Cria os objetos auxiliares para o Produto
  var tipo = TipoProduto("Eletrônico", exibirTipo: () {
    print("Tipo: Eletrônico");
  });
  var categoria = CategoriaProduto("Áudio", "Aparelhos de som", exibirCategoria: () {
    print("Categoria: Áudio");
  });
  var unidade = UnidadeMedida("Unidade", simbolo: "UN", atualizarUnidade: () {
    print("Unidade atualizada");
  });
  var fornecedor = Fornecedor(
    "Fornecedor W", 
    "44.444.444/0001-44", 
    "Av. dos Fornecedores, 303", 
    acaoFornecedor: () {
      print("Fornecedor W acionado");
    }
  );
  
  // Cria um Produto com ajuste de preço
  var produto = Produto(
    "Caixa de Som", 
    299.99, 
    tipo, 
    categoria, 
    unidade: unidade, 
    fornecedor: fornecedor, 
    ajustarPreco: () {
      print("Preço da Caixa de Som ajustado!");
    }
  );
  
  // Cria um PedidoVenda com conclusão de venda
  var pedidoVenda = PedidoVenda(
    cliente, 
    produto, 
    2, 
    concluirVenda: () {
      print("Venda concluída com sucesso!");
    }
  );
  
  // Cria um PedidoVendaEntrega com função anônima para organizar a entrega
  var pedidoVendaEntrega = PedidoVendaEntrega(
    pedidoVenda, 
    DateTime.now().add(Duration(days: 2)), 
    "Rua da Entrega, 321", 
    organizarEntrega: () {
      print("Entrega organizada para o Pedido de Venda!");
    }
  );
  
  // Exibe informações do cenário
  print("Pedido de Venda:");
  print("Cliente: ${pedidoVenda.cliente.nome}");
  print("Produto: ${pedidoVenda.produto.nome}");
  print("Quantidade: ${pedidoVenda.quantidade}");
  print("Data de Entrega: ${pedidoVendaEntrega.dataEntrega}");
  print("Endereço de Entrega: ${pedidoVendaEntrega.enderecoEntrega}");
  
  // Executa as funções anônimas para concluir a venda e organizar a entrega
  pedidoVenda.concluirVenda();
  pedidoVendaEntrega.organizarEntrega();
}
```

## Exercícios

#### Exercício 1: Criando um Fornecedor com Referência Anônima Crie um objeto de Fornecedor usando referência anônima. Utilize parâmetros nomeados no construtor.

<pre style='text-align: justify;'>
R:

Fornecedor fornecedor = Fornecedor( 'Fornecedor Exemplo', '00.000.000/0001-91', 'Rua Exemplo, 123', acaoFornecedor: () => print('Ação do Fornecedor executada') ); 
</pre>

#### Exercício 2: Criando um Produto com Referência Anônima Crie um objeto de Produto com referência anônima. Defina o preço e categoria de forma simples.

<pre style='text-align: justify;'>
R: 

Produto produto = Produto( 'Produto Exemplo', 50.0, TipoProduto('Tipo A', exibirTipo: () => print('Exibindo tipo A')), CategoriaProduto('Categoria A', 'Categoria Exemplo', exibirCategoria: () => print('Exibindo Categoria A')), unidadeMedida: UnidadeMedida('Kg', simbolo: 'kg', atualizarUnidade: () => print('Unidade atualizada')), fornecedor: Fornecedor('Fornecedor A', '00.000.000/0001-91', 'Rua X', acaoFornecedor: () {}), ajustarPreco: () => print('Preço ajustado') );
</pre>

#### Exercício 3: Criando um Pedido de Venda Crie um objeto de PedidoVenda com referência anônima, utilizando parâmetros nomeados.

<pre style='text-align: justify;'>
R:

PedidoVenda pedidoVenda = PedidoVenda( Cliente('Cliente A', endereco: 'Rua Y', atualizarEndereco: () => print('Endereço atualizado')), Produto('Produto B', 30.0, TipoProduto('Tipo B', exibirTipo: () => print('Tipo B')), CategoriaProduto('Categoria B', 'Descrição'), unidadeMedida: UnidadeMedida('L', simbolo: 'L', atualizarUnidade: () => {}), fornecedor: Fornecedor('Fornecedor B', '00.000.000/0001-91', 'Rua Z', acaoFornecedor: () {}), ajustarPreco: () {}), 3, concluirVenda: () => print('Venda Concluída') );
</pre>

#### Exercício 4: Criando um Funcionario com Referência Anônima Crie um objeto de Funcionario com uma função anônima no parâmetro calculaSalarioBonus.

<pre style='text-align: justify;'>
R:

Funcionario funcionario = Funcionario( 'João', 'Gerente', 3000.0, calculaSalarioBonus: (bonus) => print('Salário com bônus: ${3000 + bonus}') );
</pre>

#### Exercício 5: Criando um Produto com Referência Anônima e Lote Crie um objeto de ProdutoLote com referência anônima e parâmetros nomeados.

<pre style='text-align: justify;'>
R:

ProdutoLote produtoLote = ProdutoLote( Produto('Produto C', 60.0, TipoProduto('Tipo C', exibirTipo: () => {}), CategoriaProduto('Categoria C', 'Descrição Categoria C'), unidadeMedida: UnidadeMedida('Pç', simbolo: 'pç', atualizarUnidade: () => {}), fornecedor: Fornecedor('Fornecedor C', '00.000.000/0001-91', 'Rua W', acaoFornecedor: () {}), ajustarPreco: () {}), 'Lote123', DateTime(2023, 01, 01), DateTime(2024, 01, 01), verificarLote: () => print('Verificando Lote') );
</pre>

#### Exercício 6: Criando um Pedido de Compra Crie um objeto de PedidoCompra com função anônima para realizar a compra.

<pre style='text-align: justify;'>
R:

PedidoCompra pedidoCompra = PedidoCompra( Fornecedor('Fornecedor D', '00.000.000/0001-91', 'Rua V', acaoFornecedor: () {}), Produto('Produto D', 45.0, TipoProduto('Tipo D', exibirTipo: () => {}), CategoriaProduto('Categoria D', 'Categoria Produto D'), unidadeMedida: UnidadeMedida('Kg', simbolo: 'kg', atualizarUnidade: () {}), fornecedor: Fornecedor('Fornecedor D', '00.000.000/0001-91', 'Rua V', acaoFornecedor: () {}), ajustarPreco: () {}), 10, realizarCompra: () => print('Compra realizada') );
</pre>

#### Exercício 7: Criando um Estoque de Produto Crie um objeto de Estoque com função anônima para atualizar a quantidade.

<pre style='text-align: justify;'>
R:

Estoque estoque = Estoque( Produto('Produto E', 20.0, TipoProduto('Tipo E', exibirTipo: () => {}), CategoriaProduto('Categoria E', 'Categoria E'), unidadeMedida: UnidadeMedida('Kg', simbolo: 'kg', atualizarUnidade: () {}), fornecedor: Fornecedor('Fornecedor E', '00.000.000/0001-91', 'Rua U', acaoFornecedor: () {}), ajustarPreco: () {}), 100, atualizarEstoque: () => print('Estoque atualizado') );
</pre>

#### Exercício 8: Criando um Produto com Avaliação Crie um objeto de AvaliacaoProduto com referência anônima.

<pre style='text-align: justify;'>
R:

AvaliacaoProduto avaliacaoProduto = AvaliacaoProduto( Produto('Produto F', 100.0, TipoProduto('Tipo F', exibirTipo: () {}), CategoriaProduto('Categoria F', 'Categoria F'), unidadeMedida: UnidadeMedida('Pç', simbolo: 'pç', atualizarUnidade: () {}), fornecedor: Fornecedor('Fornecedor F', '00.000.000/0001-91', 'Rua T', acaoFornecedor: () {}), ajustarPreco: () {}), 4, 'Produto excelente!', registrarAvaliacao: () => print('Avaliação registrada') );
</pre>

#### Exercício 9: Criando um Produto com Desconto Crie um objeto de ProdutoDesconto com função anônima para aplicar o desconto.

<pre style='text-align: justify;'>
R:

ProdutoDesconto produtoDesconto = ProdutoDesconto( Produto('Produto G', 150.0, TipoProduto('Tipo G', exibirTipo: () {}), CategoriaProduto('Categoria G', 'Categoria G'), unidadeMedida: UnidadeMedida('Kg', simbolo: 'kg', atualizarUnidade: () {}), fornecedor: Fornecedor('Fornecedor G', '00.000.000/0001-91', 'Rua S', acaoFornecedor: () {}), ajustarPreco: () {}), 10.0, DateTime(2023, 01, 01), DateTime(2023, 12, 31), aplicarDesconto: () => print('Desconto aplicado') );
</pre>

#### Exercício 10: Criando um Pedido de Compra com Frete Crie um objeto de PedidoCompraFrete com função anônima para calcular o frete.

<pre style='text-align: justify;'>
R:

PedidoCompraFrete pedidoCompraFrete = PedidoCompraFrete( PedidoCompra( Fornecedor('Fornecedor H', '00.000.000/0001-91', 'Rua R', acaoFornecedor: () {}), Produto('Produto H', 120.0, TipoProduto('Tipo H', exibirTipo: () {}), CategoriaProduto('Categoria H', 'Categoria H'), unidadeMedida: UnidadeMedida('Pç', simbolo: 'pç', atualizarUnidade: () {}), fornecedor: Fornecedor('Fornecedor H', '00.000.000/0001-91', 'Rua R', acaoFornecedor: () {}), ajustarPreco: () {}), 5, realizarCompra: () => print('Compra realizada') ), 20.0, DateTime(2023, 05, 01), calcularFrete: () => print('Frete calculado') );
</pre>

#### Exercício 11: Criando um Pedido de Venda com Entrega Crie um objeto de PedidoVendaEntrega com função anônima para organizar a entrega.

<pre style='text-align: justify;'>
R:

PedidoVendaEntrega pedidoVendaEntrega = PedidoVendaEntrega( PedidoVenda( Cliente('Cliente B', endereco: 'Rua M', atualizarEndereco: () {}), Produto('Produto I', 200.0, TipoProduto('Tipo I', exibirTipo: () {}), CategoriaProduto('Categoria I', 'Categoria I'), unidadeMedida: UnidadeMedida('Pç', simbolo: 'pç', atualizarUnidade: () {}), fornecedor: Fornecedor('Fornecedor I', '00.000.000/0001-91', 'Rua P', acaoFornecedor: () {}), ajustarPreco: () {}), 2, concluirVenda: () => print('Venda concluída') ), DateTime(2023, 05, 15), 'Rua de Entrega, 45', organizarEntrega: () => print('Entrega organizada') );
</pre>

#### Exercício 12: Criando um Produto com Garantia Crie um objeto de ProdutoGarantia com referência anônima e função para ativar a garantia.

<pre style='text-align: justify;'>
R:

GarantiaProduto garantiaProduto = GarantiaProduto( Produto('Produto J', 250.0, TipoProduto('Tipo J', exibirTipo: () {}), CategoriaProduto('Categoria J', 'Categoria J'), unidadeMedida: UnidadeMedida('Pç', simbolo: 'pç', atualizarUnidade: () {}), fornecedor: Fornecedor('Fornecedor J', '00.000.000/0001-91', 'Rua Q', acaoFornecedor: () {}), ajustarPreco: () {}), 2, 'Garantia Estendida', ativarGarantia: () => print('Garantia ativada') );
</pre>

#### Exercício 13: Criando um Pedido de Venda com Desconto Crie um objeto de PedidoVendaDesconto com referência anônima para aplicar um desconto no pedido.

<pre style='text-align: justify;'>
R:

PedidoVendaDesconto pedidoVendaDesconto = PedidoVendaDesconto( PedidoVenda( Cliente('Cliente C', endereco: 'Rua L', atualizarEndereco: () {}), Produto('Produto K', 180.0, TipoProduto('Tipo K', exibirTipo: () {}), CategoriaProduto('Categoria K', 'Categoria K'), unidadeMedida: UnidadeMedida('Pç', simbolo: 'pç', atualizarUnidade: () {}), fornecedor: Fornecedor('Fornecedor K', '00.000.000/0001-91', 'Rua O', acaoFornecedor: () {}), ajustarPreco: () {}), 3, concluirVenda: () => print('Venda concluída') ), 15.0, aplicarDesconto: () => print('Desconto aplicado ao pedido') );
</pre>

#### Exercício 14: Criando um Produto com Status Crie um objeto de ProdutoStatus com referência anônima, onde a função altera o status do produto.

<pre style='text-align: justify;'>
R:

ProdutoDisponibilidade produtoStatus = ProdutoDisponibilidade( Produto('Produto L', 300.0, TipoProduto('Tipo L', exibirTipo: () {}), CategoriaProduto('Categoria L', 'Categoria L'), unidadeMedida: UnidadeMedida('Pç', simbolo: 'pç', atualizarUnidade: () {}), fornecedor: Fornecedor('Fornecedor L', '00.000.000/0001-91', 'Rua N', acaoFornecedor: () {}), ajustarPreco: () {}), true, 'Disponível', atualizarStatus: () => print('Status atualizado para disponível') );
</pre>

#### Exercício 15: Criando um Fornecedor com Condições de Pagamento Crie um objeto de FornecedorCondicaoPagamento com referência anônima, incluindo parâmetros para o número de parcelas e valor da parcela.

<pre style='text-align: justify;'>
R:

Fornecedor fornecedorCondicaoPagamento = Fornecedor( 'Fornecedor M', '00.000.000/0001-91', 'Rua Z', acaoFornecedor: () => print('Condição de pagamento: 3 parcelas de R\$100.00') );
</pre>

#### Exercício 16: Criando um Pedido de Compra com Atraso Crie um objeto de PedidoCompraAtraso com referência anônima e função para verificar o atraso na entrega.

<pre style='text-align: justify;'>
R:

PedidoCompraAtraso pedidoCompraAtraso = PedidoCompraAtraso( PedidoCompra( Fornecedor('Fornecedor N', '00.000.000/0001-91', 'Rua W', acaoFornecedor: () {}), Produto('Produto M', 400.0, TipoProduto('Tipo M', exibirTipo: () {}), CategoriaProduto('Categoria M', 'Categoria M'), unidadeMedida: UnidadeMedida('Pç', simbolo: 'pç', atualizarUnidade: () {}), fornecedor: Fornecedor('Fornecedor N', '00.000.000/0001-91', 'Rua W', acaoFornecedor: () {}), ajustarPreco: () {}), 2, realizarCompra: () => print('Compra realizada') ), 5, verificarAtraso: () => print('Atraso detectado na entrega') );
</pre>

#### Exercício 17: Criando um Produto com Data de Validade Crie um objeto de ProdutoValidade com referência anônima e função para verificar a validade do produto.

<pre style='text-align: justify;'>
R:

ProdutoLote produtoValidade = ProdutoLote( Produto('Produto N', 50.0, TipoProduto('Tipo N', exibirTipo: () {}), CategoriaProduto('Categoria N', 'Categoria N'), unidadeMedida: UnidadeMedida('Pç', simbolo: 'pç', atualizarUnidade: () {}), fornecedor: Fornecedor('Fornecedor N', '00.000.000/0001-91', 'Rua X', acaoFornecedor: () {}), ajustarPreco: () {}), 'Lote01', DateTime(2023, 01, 01), DateTime(2024, 01, 01), verificarLote: () => print('Validade do produto verificada') );
</pre>

#### Exercício 18: Criando um Pedido de Venda com Frete Expresso Crie um objeto de PedidoVendaFreteExpresso com referência anônima para calcular o custo do frete expresso.

<pre style='text-align: justify;'>
R:

PedidoVendaFreteExpresso pedidoVendaFreteExpresso = PedidoVendaFreteExpresso( PedidoVenda( Cliente('Cliente D', endereco: 'Rua Y', atualizarEndereco: () {}), Produto('Produto O', 150.0, TipoProduto('Tipo O', exibirTipo: () {}), CategoriaProduto('Categoria O', 'Categoria O'), unidadeMedida: UnidadeMedida('Pç', simbolo: 'pç', atualizarUnidade: () {}), fornecedor: Fornecedor('Fornecedor O', '00.000.000/0001-91', 'Rua Y', acaoFornecedor: () {}), ajustarPreco: () {}), 5, concluirVenda: () => print('Venda concluída') ), 50.0, DateTime(2023, 06, 10), calcularFreteExpresso: () => print('Cálculo do frete expresso concluído') );
</pre>

#### Exercício 19: Criando um Produto com Restrição de Idade Crie um objeto de ProdutoRestricaoIdade com referência anônima, incluindo um parâmetro para a faixa etária mínima.

<pre style='text-align: justify;'>
R:

ProdutoRestricaoIdade produtoRestricaoIdade = ProdutoRestricaoIdade( Produto('Produto P', 500.0, TipoProduto('Tipo P', exibirTipo: () {}), CategoriaProduto('Categoria P', 'Categoria P'), unidadeMedida: UnidadeMedida('Pç', simbolo: 'pç', atualizarUnidade: () {}), fornecedor: Fornecedor('Fornecedor P', '00.000.000/0001-91', 'Rua Z', acaoFornecedor: () {}), ajustarPreco: () {}), 18, verificarRestricaoIdade: () => print('Produto com restrição de idade') );
</pre>

#### Exercício 20: Criando um Cliente com Preferências Crie um objeto de ClientePreferencias com referência anônima, incluindo um parâmetro para preferências de produtos e métodos de pagamento.

<pre style='text-align: justify;'>
R:

ClientePreferencias clientePreferencias = ClientePreferencias( 'Cliente E', endereco: 'Rua L', atualizarEndereco: () => print('Endereço atualizado'), preferenciasProdutos: () => print('Preferências: Produtos eletrônicos, roupas'), metodoPagamento: () => print('Método de pagamento: Cartão de crédito') );
</pre>