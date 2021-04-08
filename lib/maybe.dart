import 'package:flutter/material.dart';
//import 'package:seoul/carousel.dart';
import 'package:seoul/female.dart';
//import 'package:seoul/toggle.dart';
import './male.dart';

class Selection extends StatefulWidget {
  @override
  _SelectionState createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
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
              //   height: 0.0,
              // ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Choose your Avatar",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 35.0,
            //width: 50.0,
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => MaleFig()));
                        setState(() {});
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: isSelected ? 10.0 : 0.0,
                        color: isSelected ? Colors.white : Colors.white,

                        //clipBehavior: Clip.antiAlias,
                        /* shape: RoundedRectangleBorder(
                        //    borderRadius: BorderRadius.circular(20)),
                       // splashColor: Colors.blue,
                       // highlightColor: Colors.blue[300],
                        // hoverColor: Colors.amber,
                        //onPressed: () {
                          setState(() {
                        
                            isSelected = true;
                          });
                          /* Container(
                              child: Text('selected',
                                  style: TextStyle(fontSize: 35.0)));*/
                          print("Hello I am a boiii");
                          print(isSelected);
                        },*/

                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                alignment: Alignment.center,
                                image: AssetImage("assets/images/one.jpg")),
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "WONDER BOII",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => FemaleFig()));
                        setState(() {});
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: isSelected ? 10.0 : 0.0,
                        color: isSelected ? Colors.white : Colors.white,

                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                alignment: Alignment.center,
                                image: AssetImage("assets/images/two.jpg")),
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "WONDER WOMAN",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 150.0,
          // ),
          // SizedBox(
          //   height: 100.0,
          //   width: 100.0,
          //   child: FloatingActionButton(
          //     child: Text(
          //       "GO!",
          //       textAlign: TextAlign.center,
          //       style: TextStyle(
          //         fontSize: 30.0,
          //         //fontFamily: "Raleway-VariableFont_wght",
          //         fontWeight: FontWeight.normal,
          //       ),
          //     ),
          //     // Icon(Icons.),
          //     backgroundColor: Colors.blueAccent,
          //     foregroundColor: Colors.white,
          //     onPressed: () {
          //       //print("NEXT");
          //       Navigator.of(context)
          //           .push(MaterialPageRoute(builder: (context) => ThemePage()));
          //     },
          //   ),
          // ),

          /*RaisedButton(
              child: Text(
                "NEXT",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onPressed: () {
                //print("NEXT");
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MovingSomething()));
              })*/
        ],
      ),
    );
  }
}
