import 'package:flutter/material.dart';
//import 'package:seoul/carousel.dart';
//import 'package:seoul/female.dart';
import 'package:seoul/toggle.dart';
//import './male.dart';

class FemaleFig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              // Align(
              //   alignment: Alignment.topLeft,
              //   child: Text(
              //     " ",
              //     textAlign: TextAlign.left,
              //     style: TextStyle(
              //       fontSize: 35.0,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 5.0,
              // ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "player selected",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
            SizedBox(
            height: 55,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                    image: AssetImage("assets/images/two.jpg")),
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          // Align(
          //    alignment: Alignment.center,
          //       child: Text(
          //         "select theme below",
          //         style: TextStyle(
          //           fontSize: 35.0,
          //           fontWeight: FontWeight.normal,
          //         ),
          //       ),          
          // ),
          SizedBox(
            height: 50,
            width: 200,
            child: RaisedButton(
               child: Text("select theme", 
               style: TextStyle(fontSize: 15),
               ),
               
              onPressed: (){
               Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ThemePage()));
            }),
          ), 
         
        ],
      ),
    );
  }
}
