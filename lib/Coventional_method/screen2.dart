import 'package:flutter/material.dart';
import 'package:routes/Coventional_method/screen3.dart';

class ScreenTwo extends StatefulWidget {
  String name;
  String number;
  ScreenTwo({super.key, required this.name, required this.number});

  @override
  State<ScreenTwo> createState() => _screenoneState();
}

class _screenoneState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(widget.name + " " + widget.number),
            backgroundColor: Colors.yellow),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ScreenThree(name: widget.name, number: 'Three')));
              },
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.limeAccent,
                      border: Border.all(style: BorderStyle.solid)),
                  height: 80,
                  width: 300,
                  child: Center(child: Text('Move To Third Screen')),
                ),
              ),
            )
          ],
        ));
  }
}
