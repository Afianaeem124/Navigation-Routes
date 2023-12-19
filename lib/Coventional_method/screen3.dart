import 'package:flutter/material.dart';
import 'package:routes/Coventional_method/screen2.dart';

class ScreenThree extends StatefulWidget {
  String name;
  String number;
  ScreenThree({super.key, required this.name, required this.number});

  @override
  State<ScreenThree> createState() => _screenoneState();
}

class _screenoneState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(widget.name + " " + widget.number),
            backgroundColor: Colors.green),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.limeAccent,
                      border: Border.all(style: BorderStyle.solid)),
                  height: 80,
                  width: 300,
                  child: Center(child: Text('Move To second Screen')),
                ),
              ),
            )
          ],
        ));
  }
}
