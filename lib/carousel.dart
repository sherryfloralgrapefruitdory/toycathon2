import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:seoul/maybe.dart';

class MovingSomething extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(children: [
        CarouselSlider(
          items: [
            Container(
              width: double.infinity,
              height: double.infinity,
              //height: MediaQuery.of(context).size.height,
              //margin: EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                color: Colors.blue,

                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage("assets/images/boxer/first page-2 two.png"),
                  fit: BoxFit.contain,
                ),
                //color: Colors.blue,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              //height: MediaQuery.of(context).size.height,

              //margin: EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage("assets/images/boxer/first page one.png"),
                  fit: BoxFit.contain,
                ),
                //color: Colors.blue,
              ),
            ),
          ],
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            enlargeCenterPage: false,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 100),
            viewportFraction: 1.0,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SizedBox(
            height: 100.0,
            width: 100.0,
            child: FloatingActionButton(
              child: Text(
                "Play!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Icon(Icons.),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              onPressed: () {
                //print("NEXT");
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Selection()));
              },
            ),
          ),
          /* RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                "NEXT",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onPressed: () {
                //print("NEXT");
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Selection()));
              }),*/
        )
      ]),
    );
  }
}
