import 'package:flutter/material.dart';
import 'package:routes/Routes/screen3.dart';

class ScreenTwoRoutes extends StatefulWidget {
  static const String id = 'ScreenTwoRoutes';
  String name;
  String number;
  ScreenTwoRoutes({super.key, required this.name, required this.number});

  @override
  State<ScreenTwoRoutes> createState() => _screenoneState();
}

class _screenoneState extends State<ScreenTwoRoutes> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map?;
    return Scaffold(
        appBar: AppBar(
            title: Text(arguments!['name'] + " " + arguments['number']),
            backgroundColor: Colors.yellow),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, ScreenThreeRoutes.id,
                    arguments: {'name': arguments['name'], 'number': 'Three'});
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
