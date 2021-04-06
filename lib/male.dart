import 'package:flutter/material.dart';

class MaleFig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  " ",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "you selected male figure",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
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
                    image: AssetImage("assets/images/one.jpg")),
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
