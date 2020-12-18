import 'package:album_app/bloc/change_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:album_app/bloc/theme.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      theme: theme.getTheme(),
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.settings),
              label: Text('Settings'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangeTheme(),
                  ),
                );
              },
            )
          ],
          //automaticallyImplyLeading: false,
          //iconTheme: IconThemeData(color: Colors.black),
          //backgroundColor: Theme.of(context).backgroundColor,
          title: Text(
            'Photo Album',
            // style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Text('Welcome to Your Album',
                    style: TextStyle(color: Colors.grey))),
            Text(
              "Your recents photo,",
              style: TextStyle(fontSize: 26.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text(
            'Add Photo',
            style: TextStyle(color: Colors.black),
          ),
          foregroundColor: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
