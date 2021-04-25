import 'package:ed_en_pro/homescreen.dart';
import 'package:ed_en_pro/pages/about.dart';
import 'package:ed_en_pro/pages/careers.dart';
import 'package:ed_en_pro/pages/contact.dart';
import 'package:ed_en_pro/pages/courses.dart';
import 'package:ed_en_pro/pages/products.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(children: <Widget>[

          Container(
            height: 100,
            color: Colors.blueGrey,
            child: DrawerHeader(
              padding: EdgeInsets.only(top: 40, left: 90),
              child: Text('Select Pages', style: TextStyle(fontSize: 20, color: Colors.white),),
              decoration: BoxDecoration(
              ),
            ),
          ),

          ListTile(
            title: Text("Home", style: TextStyle(color: Colors.blueGrey)),
            trailing: Icon(Icons.arrow_forward, color: Colors.blueGrey),
            leading: Icon(Icons.home, color: Colors.blue),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),

          ListTile(
            title: Text("About Us", style: TextStyle(color: Colors.blueGrey)),
            trailing: Icon(Icons.arrow_forward, color: Colors.blueGrey),
            leading: Icon(Icons.people, color: Colors.blue),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
          ),

          ListTile(
            title: Text("Courses", style: TextStyle(color: Colors.blueGrey)),
            trailing: Icon(Icons.arrow_forward, color: Colors.blueGrey),
            leading: Icon(Icons.menu_book, color: Colors.blue),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Course()),
              );
            },
          ),

          ListTile(
            title: Text("Products", style: TextStyle(color: Colors.blueGrey)),
            trailing: Icon(Icons.arrow_forward, color: Colors.blueGrey),
            leading: Icon(Icons.card_giftcard, color: Colors.blue),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product()),
              );
            },
          ),

          ListTile(
            title: Text("Careers", style: TextStyle(color: Colors.blueGrey)),
            trailing: Icon(Icons.arrow_forward, color: Colors.blueGrey),
            leading: Icon(Icons.work, color: Colors.blue),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Career()),
              );
            },
          ),

          ListTile(
            title: Text("Contact Us", style: TextStyle(color: Colors.blueGrey)),
            trailing: Icon(Icons.arrow_forward, color: Colors.blueGrey),
            leading: Icon(Icons.phone, color: Colors.blue),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Contact()),
              );
            },
          ),

        ],
        ),
      ),

    );
  }
}
