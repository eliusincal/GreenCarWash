import 'package:flutter/material.dart';

class Services  extends StatelessWidget{
  static const String routeName = "/services";
  const Services({key}) : super(key:key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("Servicios"),
        backgroundColor: Color(0xff193052),
      ),
      body:Container(
        child: Center(
          child: Text("Los servicios que ofrecemos"),
        ),
      )
    );
  }
}