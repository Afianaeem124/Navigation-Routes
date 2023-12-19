import 'package:flutter/material.dart';
import 'package:routes/Routes/screen2.dart';

class ScreenOneRoutes extends StatefulWidget {
  static const String id = 'ScreenOneRoutes';

  ScreenOneRoutes({
    super.key,
  });

  @override
  State<ScreenOneRoutes> createState() => _screenoneState();
}

class _screenoneState extends State<ScreenOneRoutes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Afia Naeem' + " " + 'one'),
          backgroundColor: Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, ScreenTwoRoutes.id,
                    arguments: {'name': 'Afia Naeem', 'number': 'Two'});
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
