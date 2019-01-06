import 'package:flutter/material.dart';
import './demo/listview_demo.dart';


void main() => runApp(App());


class App extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      );
    }
}

class Home extends StatelessWidget {



  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: Text(
              "title",
              style: TextStyle(
                fontSize: 30
              ),),
            elevation: 1.0,
          ),
        body: ListViewDemo()

        
        );
    }
}




