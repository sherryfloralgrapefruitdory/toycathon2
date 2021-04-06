import 'package:flutter/material.dart';

class ToggleButtons1 extends StatefulWidget {
  @override
  _ToggleButtons1State createState() => _ToggleButtons1State();
}

class _ToggleButtons1State extends State<ToggleButtons1> {
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // isSelected[0]
        //     ? Image(
        //         image: AssetImage('assets/images/boxer/first page-2 two.png'),
        //       )
        //     : Container(),
        // isSelected[1]
        //     ? Image(
        //         image: AssetImage(
        //           'assets/images/boxer/first page one.png',
        //         ),
        //       )
        //     : Container(),
        // isSelected[2]
        //     ? Image(
        //         image: AssetImage(
        //           'assets/images/one.jpg',
        //         ),
        //       )
        //     : Container(),
        Container(
          height: 500,
          color: Colors.grey.withOpacity(0.5),
          child: ToggleButtons(
            isSelected: isSelected,
            selectedColor: Colors.white,
            color: Colors.black,
            fillColor: Colors.lightBlue.shade900,
            renderBorder: false,
            children: <Widget>[
              Container(
                //height: 200,
                //width: 55,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Stack(children: [
                  // Image(
                  //   image: AssetImage("assets/images/background.png"),
                  //   fit: BoxFit.scaleDown,
                  // ),
                  Text('Urban', style: TextStyle(fontSize: 18)),
                ]

                    //color: Colors.blue,
                    ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Shaolin', style: TextStyle(fontSize: 18)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Terrain', style: TextStyle(fontSize: 18)),
              ),
            ],
            onPressed: (int newIndex) {
              setState(() {
                // if (isSelected[1]) {
                //   Background();
                // }
                for (int index = 0; index < isSelected.length; index++) {
                  if (index == newIndex) {
                    isSelected[index] = true;
                  } else {
                    isSelected[index] = false;
                  }
                }
              });
            },
          ),
        )
      ],
    );
  }
}
