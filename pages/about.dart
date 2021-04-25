import 'package:ed_en_pro/components/appdrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
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
            child: Text("About Us", style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center)
          ),
          
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(bottom: 20),
            child: Image.network("https://ed-en.pro/images/abouts-landing/16157858131-%20About.png")
          ),

          SizedBox(
            width: 300,
            child: Text("We provide the education and career opportunities that the regular education system is yet to even conceptualise!", textAlign: TextAlign.justify),
          ),

          Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(right: 10,left: 12),
              padding: EdgeInsets.only(bottom: 20, top: 20),
              child: Text("Ed-En.Pro welcomes education that’s fit for the 21st Century!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), textAlign: TextAlign.center)
          ),

          SizedBox(
            width: 300,
            child: Text("Founded in 2015 and registered as blue sail, we provided services in education, digital marketing, entertainment, real estate, and web development along with our partner companies. Now, in 2021, we have impacted over 18+ institutions with many more lined up in India and globally! We have taken the next step, joined forces with a multidisciplinary team, and as XeA innovations Pvt. ltd. (ISO 9001:2015 Certified), incorporated in October 2020, we will continue to bring our services to the next level.",
                textAlign: TextAlign.justify),
          ),

          Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(bottom: 20, top: 40),
              child: Image.network("https://ed-en.pro/images/abouts-landing/16157858132-%20About.png")
          ),

          Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(bottom: 20, top: 20),
              alignment: Alignment.center,
              child: Text("Our Mission", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), textAlign: TextAlign.center)
          ),

          SizedBox(
            width: 300,
            child: Text("People across the planet must be enabled to learn, apply, practice with intent to master, and advance in their careers with ease. Our online platform and offline centers cater to all these needs by bringin learning, practice and careers to one easily accessible, robust system that's just one click away.", textAlign: TextAlign.justify),
          ),

          Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(bottom: 20, top: 20),
              child: Image.network("https://ed-en.pro/images/abouts-landing/16157858133-%20About.png")
          ),

          Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(bottom: 20, top: 20),
              alignment: Alignment.center,
              child: Text("Our Vision", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), textAlign: TextAlign.center)
          ),
        SizedBox(
            width: 300,
        child: Text("We want to be the one-stop solution for everything anyone would need in their journey of discovering themselves and advancing their lifestyle while leaving a truly lasting impact everywhere they go.", textAlign: TextAlign.justify)),

          Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 50),
              padding: EdgeInsets.only(bottom: 30, top: 40),
              child: Image.network("https://ed-en.pro/images/abouts-landing/16157948324-%20About.png")
          ),

        ]
    )
        )
    );
  }
}
