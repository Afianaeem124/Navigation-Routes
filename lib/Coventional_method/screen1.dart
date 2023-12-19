import 'package:flutter/material.dart';
import 'package:routes/Coventional_method/screen2.dart';

class ScreenOne extends StatefulWidget {
  String name;
  String number;
  ScreenOne({
    super.key,
    this.name = 'Afia Naeem',
    this.number = 'One',
  });

  @override
  State<ScreenOne> createState() => _screenoneState();
}

class _screenoneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.name + " " + widget.number),
          backgroundColor: Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ScreenTwo(name: widget.name, number: 'Two')));
              },
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.limeAccent,
                      border: Border.all(style: BorderStyle.solid)),
                  height: 80,
                  width: 300,
                  child: Center(child: Text('Move To Second Screen')),
                ),
              ),
            )
          ],
        ));
  }
}
