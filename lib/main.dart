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
        primaryColor: Colors.blue,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
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
//            leading: IconButton(
//              icon: Icon(Icons.menu),
//              tooltip: 'menu',
//              onPressed : () => debugPrint('menu'),
//            ),
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
              unselectedLabelColor: Colors.black12,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 2.0,
            ),
            elevation: 0.0,
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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('王俊凯', style: TextStyle(fontWeight:FontWeight.bold,),),
                accountEmail: Text('wangjunkai@tfboys.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1546789747136&di=2b947e5dd9ad941e2c93b4d672d3ed37&imgtype=0&src=http%3A%2F%2Fimg.jxbond.com%2Fd%2Ffil%2Fp%2F2017%2F07%2F10%2F3575ps0lbgxcfxp.jpg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                  image: DecorationImage(
                    image: NetworkImage('https://b-ssl.duitang.com/uploads/item/201503/21/20150321180005_atnTa.thumb.700_0.jpeg'),
                    fit:BoxFit.fitWidth,
                    alignment: Alignment.center,
                    colorFilter: ColorFilter.mode(
                      Colors.blue[300].withOpacity(0.6), 
                      BlendMode.hardLight,
                    )
                  ),
                  
                ),
              ),
              ListTile(
                title: Text('Messages',textAlign: TextAlign.right,),
                trailing: Icon(Icons.message, color: Colors.black12,size: 22.0,),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Favorite',textAlign: TextAlign.right,),
                trailing: Icon(Icons.favorite, color: Colors.black12,size: 22.0,),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Settings',textAlign: TextAlign.right,),
                trailing: Icon(Icons.settings,color: Colors.black12,size: 22.0,),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        )
        ),
      );
      
    }
}




