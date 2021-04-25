import 'package:flutter/material.dart';

class Done extends StatelessWidget {
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
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Container(
                  height: 100,
                  width: 300,
                  child: Icon(Icons.check_circle_rounded, color: Colors.green,size: 100)
                ),
                  Text("Done", style: TextStyle(fontSize: 30))
          ])
    )
    );
  }
}
