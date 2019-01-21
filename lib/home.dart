import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<BottomNavigationBarItem> _getFooterItems(){
      return[
        new BottomNavigationBarItem(
          icon: new Icon(Icons.thumb_up),
          title: new Text("Populares")
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.update),
          title: new Text("Proximamente")
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.star),
          title: new Text("Mehor valoredas")
        ),
      ];
    }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter Cartelera"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search, color: Colors.white),
            onPressed: (){},
          )
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("Peliculas"),
              leading: new Icon(Icons.movie),
            ),
            new Divider(
              height: 5.0,
            ),
            new ListTile(
              title: new Text("Television"),
              leading: new Icon(Icons.tv),
            ),
            new Divider(
              height: 5.0,
            ),
            new ListTile(
              title: new Text("Cerra"),
              leading: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
            new Divider(
              height: 5.0,
            ),
          ],
        )
      ),

      bottomNavigationBar: new BottomNavigationBar(
        items: _getFooterItems(),
      ),
    );
  }
}