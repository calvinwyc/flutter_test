import 'package:flutter/material.dart';
import 'model/post.dart';


void main() => runApp(App());


class App extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        home: Home(),
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      );
    }
}

class Home extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }

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
            elevation: 4.0,
          ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        )

        
        );
    }
}


