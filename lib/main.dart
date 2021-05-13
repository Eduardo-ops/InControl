import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      // Chamado a classe Home criada abaixo de Widget Stateful
      home: Home()));
}

/* 
Widget Stateless são os que não conseguimos mudar seu estado, apenas adiona-los,
como está feito acima.

Já os Widgets Stateful são os que conseguimos realizar alterações em seus estados,
conforme veremos abaixo. 
*/

// Classe home que extende de um StateFuwidget, acessando seu método createState()
//e retornando um _HomeState().
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
// Variável declarada de forma que somente é acessada dentro dessa classe.
  int _pessoas = 0;
  String _local = "";

// Método que realiza o cálculo de pessoas do estabelecimento.
  void _alterarPessoas(int pessoas) {
    // setState possibilita que toda modificação realizada seja atualizada pela build.
    setState(() {
      return _pessoas += pessoas;
    });

    // Lógica para verificar se o estabelecimento está disponível para entrada ou não.
    if (_pessoas > 0 && _pessoas <= 10) {
      _local = "Disponível!";
    } else if (_pessoas > 10) {
      _local = "Lotado.";
    } else {
      _local = "Mundo invertido?!";
    }
  }

  // Build é sempre chamado quando queremos mudar alguma coisa.
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        "images/imagem1.jpg",
        fit: BoxFit.cover,
        height: 1000.0,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Pessoas: $_pessoas",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: FlatButton(
                    child: Text(
                      "+1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    // Função anônima que ao clicar no botão, realiza uma soma.
                    onPressed: () {
                      _alterarPessoas(1);
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: FlatButton(
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    // Função anônima que ao clicar no botão, realiza uma soma.
                    onPressed: () {
                      _alterarPessoas(-1);
                    }),
              ),
            ],
          ),
          Text(
            "$_local",
            style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 30.0),
          )
        ],
      )
    ]);
  }
}
