import 'package:flutter/material.dart';

class Products  extends StatelessWidget{
  static const String routeName = "/products";
  const Products({key}) : super(key:key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("Productos"),
        backgroundColor: Color(0xff193052),
      ),
      body:Container(
        child: Center(
          child: Text("Los productos que ofrecemos"),
        ),
      )
    );
  }
}