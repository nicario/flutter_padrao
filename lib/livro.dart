// criar a classe que representará o model domain da aplicação flutter

class Livro{
  //descrever as propriedades
  //todas serão descritas com o modificador private
  int _codigo;
  String _titulo;
  String _autor;
  double _preco;

  //fazer uso dos metodos getters e setters

  int get codigo => _codigo;

  set codigo(int c){
    _codigo = c;
  }

  String get titulo => _titulo;
  set titulo(String t){
    _titulo = t;
  }

  String get autor => _autor;
  set autor(String a){
    _autor = a;
  }

  double get preco => _preco;
  set preco(double p){
    _preco = p;
  }

  //definição do método constructor do model/classe

  Livro(this._codigo, this._titulo, this._autor, this._preco);
}