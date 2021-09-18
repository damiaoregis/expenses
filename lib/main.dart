import 'package:expenses/components/Transaction_user.dart';


import 'package:flutter/material.dart';


void main() {
  runApp(ExpnsesApp());
}

class ExpnsesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             Container(
               child: Card(
                 child: Text('Graficp'),
                 elevation: 5,
               ),
             ),
             TransactionUser(),
           ],
         ),
      ),
    );
  }
}
