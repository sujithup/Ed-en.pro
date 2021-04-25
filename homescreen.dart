import 'package:ed_en_pro/components/appdrawer.dart';
import 'package:ed_en_pro/components/carousel.dart';
import 'package:ed_en_pro/pages/arduino.dart';
import 'package:ed_en_pro/pages/careers.dart';
import 'package:ed_en_pro/pages/contact.dart';
import 'package:ed_en_pro/pages/courses.dart';
import 'package:ed_en_pro/pages/esp32.dart';
import 'package:ed_en_pro/pages/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

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
            Carousels(),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                "Unleash your true potential",
                style: TextStyle(fontSize: 24.72, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 30, right: 30),
              child: Text(
                "We’ll teach you how to flourish, as a student, a professional or a hobby learner! It’s never too Late to learn subjects that truly matter and change your life. Join Ed-En.Pro for a journey through the Future of Education.",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0),
                textAlign: TextAlign.justify,
                overflow: TextOverflow.visible,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: SizedBox(
                height: 300,
                width: double.maxFinite,
                child: Carousel(
                  images: [
                    NetworkImage(
                        "https://ed-en.pro/images/slider_learn/1610772039Gold%20Navy%20Real%20Estate%20Review%20Instagram%20Post.png"),
                    NetworkImage(
                        "https://ed-en.pro/images/slider_learn/1610773037Gold%20Navy%20Real%20Estate%20Review%20Instagram%20Post%20(4).png")
                  ],
                  animationCurve: Curves.easeInOutBack,
                  autoplay: true,
                  boxFit: BoxFit.contain,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.all(25),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.amberAccent,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                // ignore: deprecated_member_use
                child: FlatButton(
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Course()),
                    );
                  },
                  child: Text(
                    "Start Learning Now",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
                  ),
                )),
            Container(
              //padding: EdgeInsets.all(40),
              child: Image.network(
                  "https://ed-en.pro/images/todays-deals-product/1614585709second%20slider%20home%20page.png"),
            ),
            Container(
                margin: EdgeInsets.only(top: 40),
                child: Text("Today's Deal",
                    style: TextStyle(
                        fontSize: 24.72, fontWeight: FontWeight.bold))),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Image.network(
                  "https://ed-en.pro/images/product/161440313651H9VyyF82L.jpg"),
            ),
            Text("Electronics"),
            Text("Arduino Uno", style: TextStyle(fontSize: 20)),
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
                      MaterialPageRoute(builder: (context) => Arduino()),
                    );
                  },
                  child: Text(
                    "Read More",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Image.network(
                  "https://ed-en.pro/images/product/161440608561fFe8tMJmL._SL1000_.jpg"),
            ),
            Text("Electronics"),
            Text("ESP32 Sim800L", style: TextStyle(fontSize: 20)),
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
                )),
            Divider(
              color: Colors.black,
              thickness: 5,
              height: 01,
              indent: 150,
              endIndent: 150,
            ),
            Container(
                margin: EdgeInsets.all(25),
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(217, 164, 32, 100),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),

                // ignore: deprecated_member_use
                child: FlatButton(
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Product()),
                    );
                  },
                  child: Text(
                    "View All",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                  ),
                )),
            Divider(
              color: Colors.black,
              thickness: 2,
              height: 01,
              indent: 50,
              endIndent: 50,
            ),
            Container(
                margin: EdgeInsets.only(top: 40),
                child: Text("Career Opportunities",
                    style: TextStyle(
                        fontSize: 24.72, fontWeight: FontWeight.bold))),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: Image.network(
                    "https://ed-en.pro/front/images/home_page/career.png")),
            Padding(padding: EdgeInsets.only(top: 20)),
            SizedBox(
              width: 300,
              child: Text(
                "Step into your dream career and show the world that you’re capable of adapting and contributing to the world around you. As an Ed-En Pro learner, you are equipped with advanced real-life skills that are required in the current and upcoming decades. It’s Never Too Late to Learn Everything You Wish You Learned in School. Start learning, develop high yield skills and improve your career and future. Become valued, Become respected and Become a Pro at what you do.",
                style: TextStyle(fontWeight: FontWeight.w300),
                textAlign: TextAlign.justify,
                maxLines: 10,
              ),
            ),
            Container(
                margin: EdgeInsets.all(25),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.amberAccent,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                // ignore: deprecated_member_use
                child: FlatButton(
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Career()),
                    );
                  },
                  child: Text(
                    "Look For Careers",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: Text("Recruiters",
                    style: TextStyle(
                        fontSize: 24.72, fontWeight: FontWeight.bold))),
            Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Image.network(
                    "https://ed-en.pro/front/images/home_page/Careers_Recruit.png")),
            SizedBox(
              width: 300,
              child: Text(
                "As a company whether large or small, you’re always on the hunt for the right person that can make or break your team’s next venture. Make your hunt easier with E-Pro Recruiters where you’ll find Pro’s in the fields of your interest. Ed-En.Pro isn’t just another corporate training platform, we equip our learners with the exact set of tools they need to drive true impact into your project. Your business will save big on your new recruit’s education and training! Find the right fit!",
                style: TextStyle(fontWeight: FontWeight.w300),
                textAlign: TextAlign.justify,
                maxLines: 10,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 25, bottom: 60),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.amberAccent,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                // ignore: deprecated_member_use
                child: FlatButton(
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Career()),
                    );
                  },
                  child: Text(
                    "Find the best",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
                  ),
                ))
          ],
        )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(217, 164, 32, 100),
          child: Icon(
            Icons.message_rounded,
            size: 30,
          ),
          onPressed: contact,
        ),
        bottomSheet: Padding(padding: EdgeInsets.only(bottom: 70.0)));
  }

  void contact() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Contact()),
    );
  }
}
