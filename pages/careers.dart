import 'package:ed_en_pro/components/appdrawer.dart';
import 'package:flutter/material.dart';

class Career extends StatelessWidget {
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
            child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(30),
                width: double.maxFinite,
                color: Colors.black,
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Text("Careers",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center)),
            Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(bottom: 20),
                child: Image.network(
                    "https://ed-en.pro/images/job_img/1615870594Hiring Poster.jpg")),
            Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(right: 10, left: 15),
                padding: EdgeInsets.only(bottom: 20, top: 20),
                child: Text("We're Hiring Interns",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left)),
            SizedBox(
              width: 320,
              child: Text("We at XeA Innovations Pvt. Ltd. are hiring offline Interns for our Bangalore office for various positions.", textAlign: TextAlign.justify,)
            ),

            Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top:40, bottom: 20),
                child: Image.network(
                    "https://ed-en.pro/images/job_img/1615870594Hiring Poster.jpg")),
            Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(right: 10, left: 15),
                padding: EdgeInsets.only(bottom: 20, top: 20),
                child: Text("We're Hiring Full-time Employees",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left)),
            SizedBox(
                width: 320,
                child: Text("We at XeA Innovations Pvt. Ltd. are hiring offline Employees for our Bangalore office for various positions.", textAlign: TextAlign.justify,)
            ),

            SizedBox(height: 50)

          ],
        )));
  }
}
