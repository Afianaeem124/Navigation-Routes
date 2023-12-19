import 'package:flutter/material.dart';
import 'package:routes/Coventional_method/screen2.dart';

class ScreenThreeProfessional extends StatefulWidget {
  ScreenThreeProfessional({super.key});

  @override
  State<ScreenThreeProfessional> createState() => _screenoneState();
}

class _screenoneState extends State<ScreenThreeProfessional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Screen 3'), backgroundColor: Colors.green),
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
