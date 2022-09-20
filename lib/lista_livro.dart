//importação dos recursos necessários
import 'package:flutter/material.dart';
//importando o model
import 'livro.dart';

//definir o componente/widget Stateless

class ListaLivro extends StatelessWidget{
  // definir uma propriedade com o seguinte objetivo:
  // criar um objeto referencial para, durante a construção da tela, fazer uso
  // do objeto para que todas as propriedades descritas no model possa ser referenciados
  // dentro da estrutura da tela
  final Livro livro;

  //estabelecer o construtor da classe EstruturaListaLivro com o objetivo
  // de identifica-lo para posteriores comunicações entre componentes

 ListaLivro({Key? key, required this.livro}): super(key: key);

 //definir a estrutura visual do widget

  @override
  Widget build(BuildContext context){
    //o metodo build retorna uma estrutura de view para o componente
    return Container(
      color: Colors.pinkAccent,
      padding: EdgeInsets.all(5),
      height: 120,
      child: Card(
        color: Colors.deepPurple,
        child: Column(
          children: [
            Text(
              this.livro.codigo.toString(),
              style: TextStyle(color: Colors.black87, fontSize: 20),
            ),
            Text(
              this.livro.titulo,
              style: TextStyle(color: Colors.black87, fontSize: 20),
            ),
            Text(
              this.livro.autor,
              style: TextStyle(color: Colors.black87, fontSize: 20),
            ),
            Text(
              this.livro.preco.toString(),
              style: TextStyle(color: Colors.black87, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
