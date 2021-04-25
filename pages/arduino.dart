import 'package:ed_en_pro/pages/done.dart';
import 'package:flutter/material.dart';

class Arduino extends StatelessWidget {
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
                "https://ed-en.pro/images/product/161440313651H9VyyF82L.jpg"),
          ),
          Text("Electronics"),
          Text("Arduino Uno", style: TextStyle(fontSize: 20)),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 30, right: 30,bottom: 10),
            child: Text(
              "The Arduino Uno R3 with Cable is a microcontroller board based on the ATmega328 (datasheet). It has 14 digital input/output pins (of which 6 can be used as PWM outputs); 6 analog inputs, a 16 MHz ceramic resonator, a USB connection, a power jack, an ICSP header, and a reset button.",
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
        ]))
    );
  }
}
