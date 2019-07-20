import 'package:flutter/material.dart';
import 'drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vodafone'),
        backgroundColor: Colors.orange.shade900,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10.0,),
          Arbol(),
          SizedBox(height: 10.0,),
          Center( child: Text('Hello World!')),
          SizedBox(height: 10.0,),
          
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}

class Arbol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.ondemand_video),
                Container(
                  child: Text('One'),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.ondemand_video),
                Container(
                  child: Text('One'),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.ondemand_video),
                Container(
                  child: Text('One'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
