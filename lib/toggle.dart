import 'package:flutter/material.dart';
import 'toggle_buttons.dart';

class ThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildHeader(
                  title: 'Select Theme',
                  child: ToggleButtons1(),
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildHeader({
    @required Widget child,
    @required String title,
  }) =>
      Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
            //width: double.infinity,
          ),
          child,
        ],
      );
}
