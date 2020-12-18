import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:local_auth/local_auth.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void chooseScreen() async {
    String screen;
    final LocalAuthentication localAuth = LocalAuthentication();
    bool weCanCheckBiometrics = await localAuth.canCheckBiometrics;
    if (weCanCheckBiometrics == true) {
      screen = '/fingerprint';
    } else {
      screen = '/pin';
    }
    Navigator.pushReplacementNamed(context, screen);
  }

  @override
  void initState() {
    super.initState();
    chooseScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff00003f),
        body: Center(
            child: SpinKitRotatingCircle(
          color: Colors.grey,
          size: 50.0,
        )));
  }
}
