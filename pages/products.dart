import 'package:ed_en_pro/components/appdrawer.dart';
import 'package:flutter/material.dart';

import 'arduino.dart';
import 'esp32.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(217, 164, 32, 100),
        title: Text(
          'ED-EN.PRO',
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        Container(
            margin: EdgeInsets.all(30),
            width: double.maxFinite,
            color: Colors.black,
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text("Products",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center)),
        Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(bottom: 20),
            child: Image.network(
                "https://ed-en.pro/images/ecom-landing/1611209993E-commerce_Landing_resized[1].png")),
        Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 10, left: 15),
            padding: EdgeInsets.only(bottom: 20, top: 20),
            child: Text("Today's Deal",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left)),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Image.network(
              "https://ed-en.pro/images/product/161440313651H9VyyF82L.jpg"),
        ),
        Text("Electronics"),
        Text("Arduino Uno"),
        Container(
          margin: EdgeInsets.all(25),
          padding: EdgeInsets.all(5),
          color: Color.fromRGBO(217, 164, 32, 100),
          // ignore: deprecated_member_use
            // ignore: deprecated_member_use
            child: FlatButton(
              color: Colors.transparent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Arduino()),
                );
              },
              child: Text(
                "Read More",
                style:
                TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
            )
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Image.network(
              "https://ed-en.pro/images/product/161440608561fFe8tMJmL._SL1000_.jpg"),
        ),
        Text("Electronics"),
        Text("ESP32 Sim800L"),
        Container(
          margin: EdgeInsets.all(25),
          padding: EdgeInsets.all(5),
          color: Color.fromRGBO(217, 164, 32, 100),

            // ignore: deprecated_member_use
            child: FlatButton(
              color: Colors.transparent,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ESP()),
                );
              },
              child: Text(
                "Read More",
                style:
                TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
            )
        ),
        Divider(
          color: Colors.black,
          thickness: 5,
          height: 01,
          indent: 150,
          endIndent: 150,
        ),
        SizedBox(height: 50)
      ])),
    );
  }
}
