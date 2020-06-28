import 'dart:async';
import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

String user = 'Maria Coelho';
String pass = 'cenourinha';
bool conferesenha;
bool confereuser;
void main() {
  runApp(Inicia());
}

class Inicia extends StatelessWidget {
  get initialRoute => null;

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
        title: 'Tulio, o curioso',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
          routes: <String, WidgetBuilder>{
          "/":  (BuildContext context) => initialRoute(TelaLogin()),
          "/1": (BuildContext context) => TelaMenu(),
          "/2": (BuildContext context) => TelaDiarios(),
          "/3": (BuildContext context) => TelaDiario(),
          "/4": (BuildContext context) => TelaSobre(),
          "/5": (BuildContext context) => TelaAnotacao(),
          "/6": (BuildContext context) => TelaAddVisual(),
          "/7": (BuildContext context) => TelaGravaAudio(),
          "/8": (BuildContext context) => TelaAjuda(),
        });
  }
}

class TelaLogin extends StatelessWidget{
   @override
   return 
}