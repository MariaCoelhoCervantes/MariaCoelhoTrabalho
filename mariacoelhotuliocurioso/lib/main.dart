import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

String user = 'Maria Coelho';
String pass = 'cenourinha';
String textinU;
bool conferesenha;
bool confereuser;
void main() {
  runApp(Inicia());
}

class Inicia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tulio, o curioso',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/",
        routes: <String, WidgetBuilder>{
          "/": (BuildContext context) => TelaLogin(),
          "/1": (BuildContext context) => Menu(),
          //"/2": (BuildContext context) => TelaDiarios,
          //"/3": (BuildContext context) => TelaDiario,
          //"/4": (BuildContext context) => TelaSobre,
          //"/5": (BuildContext context) => TelaAnotacao,
          //"/6": (BuildContext context) => TelaAddVisual,
          //"/7": (BuildContext context) => TelaGravaAudio,
          //"/8": (BuildContext context) => TelaAjuda,
        },
        home: Scaffold(
            body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        )));
  }
}

class TelaLogin extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          bottomAppBarColor: Colors.blue[300],
        ),
        home: Scaffold(
            body: Column(children: [
          Container(
            height: 20,
            width: 20,
            alignment: Alignment.center,
            child: TextField(
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.headline4,
                decoration: InputDecoration(
                  icon: Icon(Icons.face),
                  labelText: 'Nome de usuário:',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                onChanged: (String val) {
                  textinU = val;
                  debugPrint('Usuário; $val');
                  if (textinU == null || textinU != user) {
                    confereuser = false;
                  } else {
                    confereuser = true;
                  }
                }),
          ),
          Container(
            height: 20,
            width: 20,
            color: Colors.cyan[200],
            alignment: Alignment.center,
            child: TextField(
                keyboardType: TextInputType.text,
                style: Theme.of(context).textTheme.headline4,
                decoration: InputDecoration(
                  labelText: 'Senha: coelho gosta de?',
                  icon: Icon(Icons.face),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                onChanged: (String val) {
                  textinU = val;
                  debugPrint('Senha: $val');
                  if (textinU == null || textinU != user) {
                    confereuser = false;
                  } else {
                    confereuser = true;
                  }
                }),
          ),
          Container(
              height: 200,
              width: 40,
              color: Colors.cyan,
              child: RaisedButton(
                color: Colors.lightBlue[200],
                onPressed: () {
                  bool x = confereuser;
                  bool y = conferesenha;
                  if (x == true && y == true) {
                    Navigator.pushNamed(context, '/1');
                  } else {
                    SnackBar(content: Text('Epa! Você errou ouo.'));
                  }
                },
                child: const Text('Entrar'),
              ))
        ])));
  }
}

class Menu extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tulio, o curioso',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          bottomAppBarColor: Colors.blue[300],
        ),
        home: Scaffold(
          body: Container(
              color: Color(0xFFb3cdd4),
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('fasedois.gif')),
                    RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/2');
                      },
                      child: Text("Diarios"),
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/4');
                      },
                      child: Text("Sobre"),
                    )
                  ])),
        ));
  }
}

class TelaSobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Container(
                width: 200,
                height: 200,
                child: Text(
                    "Aluno: Maria Beatriz Coelho Cervantes /n Programação para Dispositivos móveis /n "),
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/1');
                },
                child: Icon(Icons.arrow_back),
              ),
              Container(
                height: 200,
                width: 200,
                color: Color(0xFFffe5c4),
              )
            ])));
  }
}

class InfoDiario {
  String nomeDiario;
  String topico;
  String pontoChave;
  String descricao;

  void CriaDiario(
    String a,
    String b,
    String c,
    String d,
  ) {
    a = this.nomeDiario;
    b = this.topico;
    c = this.pontoChave;
    d = this.descricao;
  }
}
