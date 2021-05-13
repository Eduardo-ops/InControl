import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Stack(
        children: <Widget>[
         Image.asset(
          "images/imagem1.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: 0",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                      onPressed: () {}),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: FlatButton(
                      child: Text(
                        "-1",
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      ),
                      onPressed: () {}),
                ),
              ],
            ),
            Text(
              "Disponível!",
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            )
          ],
        )
      ])));
}
