import 'package:flutter/material.dart';
import 'package:projeto_pratica/widget/details/widget_item_lista_detalhes.dart';
import 'package:projeto_pratica/widget/forms/widget_cidade.dart';
import 'package:projeto_pratica/widget/forms/widget_estado.dart';
import 'package:projeto_pratica/widget/list/widget_city_lista.dart';
import 'package:projeto_pratica/widget/widget_menu.dart';
import 'package:projeto_pratica/config/routes.dart';
import 'package:projeto_pratica/widget/forms/widget_pessoa.dart';
import 'package:projeto_pratica/widget/list/widget_pessoa_lista.dart';

class App extends StatelessWidget {
  const App({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula Widget',
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      routes: {
        Routes.home: (context) => const WidgetMenu(),
        Routes.state: (context) => const WidgetEstado(),
        Routes.city: (context) => const WidgetCidade(),
        Routes.person: (context) => const WidgetPessoa(),
        Routes.list_person: (context) => WidgetPessoaLista(),
        Routes.list_city: (context) => WidgetCidadeLista(),
        Routes.item_details: (context) => WidgetItemListaDetalhe()
      },
    );
  }
}
