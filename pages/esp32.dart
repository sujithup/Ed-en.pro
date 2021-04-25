import 'package:ed_en_pro/pages/done.dart';
import 'package:flutter/material.dart';

class ESP extends StatelessWidget {
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
        body: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Image.network(
                "https://ed-en.pro/images/product/161440608561fFe8tMJmL._SL1000_.jpg"),
          ),
          Text("Electronics"),
          Text("ESP32 Sim800L", style: TextStyle(fontSize: 20)),

          Padding(
            padding: EdgeInsets.only(top: 20, left: 30, right: 30,bottom: 10),
            child: Text(
              "The wireless module is integrated with ESPRESSIF-ESP32 240MHz Xtensa dual-core 32-bit LX6 microprocessor. It needs a power supply of 5V/1A and has a Type C port. It features 802.11 b/g/n wifi protocol and bluetooth v4.2BR/EDR and BLE standard protocol.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0),
              textAlign: TextAlign.justify,
              overflow: TextOverflow.visible,
            ),
          ),

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
                  "Buy Now",
                  style:
                  TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
              )),
        ]
    ))
    );
  }
}
