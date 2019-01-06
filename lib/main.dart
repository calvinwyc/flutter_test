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
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'menu',
              onPressed : () => debugPrint('menu'),
            ),
            title: Text(
              "title",
              style: TextStyle(
                fontSize: 30
              ),),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.missed_video_call),),
                Tab(icon: Icon(Icons.panorama_fish_eye),),
                Tab(icon: Icon(Icons.screen_lock_portrait),),
              ],
            ),
            elevation: 1.0,
            actions: <Widget>[
              IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed : () => debugPrint('search'),
            )
            ],
          ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.missed_video_call,color: Colors.black12,size: 128.0),
            Icon(Icons.panorama_fish_eye,color: Colors.black12,size: 128.0),
            Icon(Icons.screen_lock_portrait,color: Colors.black12,size: 128.0),
            
          ],
        ),
        ),
      );
      
    }
}




