import 'package:flutter/material.dart';

class ToggleButtons1 extends StatefulWidget {
  @override
  _ToggleButtons1State createState() => _ToggleButtons1State();
}

class _ToggleButtons1State extends State<ToggleButtons1> {
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Container(
            color: Colors.green.withOpacity(0.5),
            child: ToggleButtons(
              isSelected: isSelected,
              selectedColor: Colors.white,
              color: Colors.black,
              fillColor: Colors.lightBlue.shade900,
              renderBorder: false,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Urban', style: TextStyle(fontSize: 18)),
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
          ),
        ],
      );
}
