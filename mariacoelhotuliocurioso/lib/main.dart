import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

String user = 'Maria Coelho';
String pass = 'cenourinha';
bool conferesenha;
bool confereuser;

void main() => runApp(Entrada());

class Entrada extends StatelessWidget {
  Entrada({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bem-Vindo! OWO',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TextUser());
  }
}

class TextUser extends StatefulWidget {
  @override
  TextUserState createState() => TextUserState();
}

class TextUserState extends State<TextUser> {
  String _textinU;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          Image.asset(
            'images/bee.gif',
            scale: 20,
          ),
          TextField(
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
                _textinU = val;
                debugPrint('Usuário; $val');
                if (_textinU == null || _textinU != user) {
                  confereuser = false;
                } else {
                  confereuser = true;
                }
              }),
          TextField(
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
                _textinU = val;
                debugPrint('Senha: $val');
                if (_textinU == null || _textinU != user) {
                  confereuser = false;
                } else {
                  confereuser = true;
                }
              }),
          RaisedButton(
            color: Colors.lightBlue[200],
            onPressed: () {
              bool a = confereuser;
              bool b = conferesenha;
              if (a == true && b == true) {
              } else {
                SnackBar(content: Text('Epa! Você errou ouo.'));
              }
            },
            child: const Text('Entrar'),
          )
        ]));
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tulio (?), o curioso',
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
                      onPressed: () {},
                    ),
                    RaisedButton(
                      onPressed: () {},
                    )
                  ])),
        ));
  }
}

class Sobre extends StatelessWidget {}
