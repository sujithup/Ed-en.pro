import 'package:ed_en_pro/components/appdrawer.dart';
import 'package:ed_en_pro/pages/done.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
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
              child: Text("Contact Us",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center)),
          Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(bottom: 20),
              child: Image.network(
                  "https://ed-en.pro/images/contact/contact.png")),
          Card(
              elevation: 50,
              shadowColor: Colors.black,
              child: SizedBox(
                  width: 300,
                  child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(children: [
                        Text("Keep in touch with us",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24)),
                        Padding(padding: EdgeInsets.all(15)),
                        TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Name',
                                hintText: 'Enter Your Name')),
                        Padding(padding: EdgeInsets.all(15)),
                        TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Phone',
                                hintText: 'Enter Your Number')),
                        Padding(padding: EdgeInsets.all(15)),
                        TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email',
                                hintText: 'Enter Your Email')),
                        Padding(padding: EdgeInsets.all(15)),
                        TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Phone',
                                hintText: 'Enter Your Number')),
                        Padding(padding: EdgeInsets.all(15)),
                        TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Message',
                                hintText: 'Enter Your Message')),
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
                                  MaterialPageRoute(builder: (context) => Done()),
                                );
                              },
                              child: Text(
                                "Send a message",
                                style:
                                TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                              ),
                            )
                        ),
                      ])))),
              SizedBox(height: 100)
        ])));
  }
}
