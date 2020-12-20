import 'package:flutter/material.dart';
import 'package:album_app/screens/fingerprint.dart';
import 'package:album_app/screens/pin.dart';
import 'package:album_app/screens/loading.dart';
import 'package:album_app/screens/dashboard.dart';

import 'package:provider/provider.dart';
import 'bloc/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(ThemeData.light()),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            '/pin': (context) => PinScreen(),
            '/fingerprint': (context) => FingerprintScreen(),
            '/': (context) => Loading(),
            '/dashboard': (context) => DashboardScreen()
          },
          initialRoute: '/'),
    );
  }
}
