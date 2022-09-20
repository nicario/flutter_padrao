// a importação dos recursos necessários

import 'package:flutter/material.dart';
import 'livro.dart';

//definir o componente/widget
//importar para este componente o componente listaLivro
import 'lista_livro.dart';

class ConteudoLista extends StatelessWidget{
  //definir o conteúdo do componente - lista de livros
  final List<Livro> livros = [
    // criar instancias do model para que o conjunto de dados que será criado
    // obedeça o conjunto de regras estabelecido no model
    Livro (1, 'Grande Sertão: Veredas', 'João Guimaraes Rosa', 59.99),
    Livro (2, 'Dom Casmurro', 'Machado de Assis', 29.89),
    Livro (3, 'A ilustra Casa de Ramires', 'Eça de Queiroz', 59.69),
    Livro (4, 'Os Sertões', 'Euclides da Cunha', 63.59),
    Livro (5, 'A hora da Estrela', 'Clarice Lispector', 19.93)
  ];

  //definir a estrutura necessária para "vincular" os dados da lista
  //a estrutura de view já existente

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // ao trabalhar com o Scaffold é preciso "dividir" a tela em 2 "pedaços"
      // quais? R: AppBar e body
      // parte 1
      appBar: AppBar(
        title: Text(
          'Lista de livros da minha biblioteca'
        ),
      ),
      //parte 2 - body: estabelecer a instancia da classe que auxiliará na construção
      //da estrutura final da lista que exibirá os dados descritos acima
      body: ListView.builder(
        itemCount: livros.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: () => mostrar(
                context, livros[index].titulo
            ),
          child: ListaLivro(livro: livros[index],
          key: key
          ),
          );
        },
      ),
    );
  }
}

//criar método/função para exibir o conteúdo de cada item - selecionado pelo usuário - numa janela de dialogo usando a classe AlertDialog

void mostrar(BuildContext context, String texto){
  // implementar o método showDialog() dessa forma teremos a possibilidade de exibir as informações pro usuário
  showDialog(
    context: context,
    builder: (BuildContext context){
      //aqui, colocaremos o widget Text para o AlertDialog
      return AlertDialog(
      title: Text(
        'Livro'
      ),
        //agora é necessário indicar o conteúdo que ela exibirá
        content: Text(
          texto
        ),
        //neste passo, será definido a actions (evento) que será disparado pela função
        actions: <Widget>[
          TextButton(
            //compor a classe TextButton com o evento onPressed
            onPressed: () => Navigator.pop(context),
            child: Text('Tela Principal'),
          ),
        ],
      );
    }
  );
}