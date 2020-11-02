import 'package:flutter/material.dart';
import 'package:green_car_wash_app/src/screens/login/login.dart';

class Home extends StatelessWidget{
  static const String routeName = '/home';
  Drawer getDrawer(BuildContext context){
    var header = DrawerHeader(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            child: Icon(Icons.person, size: 90, color: Colors.white, ),
            maxRadius: 50,
            backgroundColor: Color(0xffBAE2F5),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "James Wesley",
            style: TextStyle(
              color: Color(0xff49b72a),
              fontSize: 20,
            ),
          )
        ],
      ),
    );

    var info = AboutListTile(
      child: Text(
        "Información de la aplicación", style: TextStyle(
          color: Color(0xff193052),
          fontSize: 14,
        )
      ),
      applicationIcon: Icon(Icons.favorite),
      applicationVersion: "v0.0.1",
    );

    ListTile getItem(String description, String route){
      return ListTile(
        title: Text(
          description, style: TextStyle(
            color: Color(0xff193052),
            fontSize: 14,
          )
        ),
        onTap: (){
          Navigator.pushNamed(context, route);
        },
      );
    }
    ListTile logoutItem(String description){
      return ListTile(
        title: Text(
          description, style: TextStyle(
            color: Color(0xff193052),
            fontSize: 14,
          )
        ),
        onTap: (){
           Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Login()), (Route<dynamic> route) => false);
        },
      );
    }
    ListView getList(){
      return ListView(
        children: <Widget>[
          header,
          getItem('Servicios', '/services'),
          getItem('Productos', '/products'),
          getItem('Mis ordenes', '/myorders'),
          logoutItem('Cerrar sesión'),
          info
        ],
      );
    }
    return Drawer(child: getList());

  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Green Car Wash"),
        backgroundColor: Color(0xff193052),
      ),
      drawer: Drawer(
        child: getDrawer(context),
      ),
    );
  }
}