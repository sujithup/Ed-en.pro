import 'package:ed_en_pro/components/appdrawer.dart';
import 'package:ed_en_pro/pages/video1.dart';
import 'package:ed_en_pro/pages/video2.dart';
import 'package:flutter/material.dart';

import 'done.dart';

class Course extends StatelessWidget {
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
                  child: Text("Courses",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center)),
              Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(bottom: 20),
                  child: Image.network(
                      "https://ed-en.pro/images/course-list-landing/1611146019EDUCATION - ENHANCED (2).png")),
              Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(right: 10, left: 15),
                  padding: EdgeInsets.only(bottom: 20, top: 20),
                  child: Text("Ed-En Premium Courses",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left)),
              Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  child: SizedBox(
                    width: 300,
                    height: 450,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.network(
                              "https://ed-en.pro/images/course/1612521348Jithin%20Thumbnail.jpg"),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Hands-on Arduino",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ),
                          Container(
                            margin: EdgeInsets.all(25),
                            padding: EdgeInsets.all(5),
                            color: Colors.blueGrey,
                              // ignore: deprecated_member_use
                              child: FlatButton(
                                color: Colors.transparent,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Video1()),
                                  );
                                },
                                child: Text(
                                  "Watch Now",
                                  style:
                                  TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500,color: Colors.white),
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(
                height: 50,
              ),

              Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  child: SizedBox(
                    width: 300,
                    height: 450,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.network(
                              "https://ed-en.pro/images/course/1612521496Rohan%20Thumbnail.jpg"),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "3D Printing",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 1,//Textstyle
                          ),
                          Container(
                            margin: EdgeInsets.all(25),
                            padding: EdgeInsets.all(5),
                            color: Colors.blueGrey,
                              // ignore: deprecated_member_use
                              child: FlatButton(
                                color: Colors.transparent,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Video2()),
                                  );
                                },
                                child: Text(
                                  "Watch Now",
                                  style:
                                  TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500,color: Colors.white),
                                ),
                              )
                          ),

                        ],
                      ),
                    ),
                  )),
              SizedBox(height: 50)
            ],
          ),
        ));
  }
}
