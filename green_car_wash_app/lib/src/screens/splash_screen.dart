import 'package:flutter/material.dart';
import 'package:green_car_wash_app/src/screens/login/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  // ignore: must_call_super
  void initState() {
    Future.delayed(
        Duration(milliseconds: 2000),
            () => Navigator.pushReplacement(context,
            PageRouteBuilder(
                transitionDuration: Duration(seconds: 2),
                transitionsBuilder:
                    (context, animation, animationTime, child){
                  animation = CurvedAnimation(
                      parent: animation, curve: Curves.elasticInOut);
                  return ScaleTransition(
                    alignment: Alignment.center,
                    scale:animation,
                    child: child,
                  );
                },
                pageBuilder: (context, animation, animationTime){
                  return Login();
                }
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(),
              Center(
                child: FractionallySizedBox(
                  widthFactor: .6,
                  child: Image.asset(
                    'assets/images/logo/logo@3x.png',
                    fit: BoxFit.none,
                    scale: 2,
                  ),
                ),
              ),
              Spacer(),
              CircularProgressIndicator(),
              SizedBox(
                height: 20,
              ),
              Text("Bienvenido"),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
