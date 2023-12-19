import 'package:flutter/material.dart';
import 'package:routes/Routes/screen2.dart';

class ScreenThreeRoutes extends StatefulWidget {
  static const String id = 'ScreenThreeRoutes';
  String name;
  String number;
  ScreenThreeRoutes({super.key, required this.name, required this.number});

  @override
  State<ScreenThreeRoutes> createState() => _screenoneState();
}

class _screenoneState extends State<ScreenThreeRoutes> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map?;
    return Scaffold(
        appBar: AppBar(
            title: Text(arguments!['name'] + " " + arguments['number']),
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
