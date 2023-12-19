import 'package:flutter/material.dart';
import 'package:routes/Coventional_method/screen2.dart';
import 'package:routes/ProfessionalRoutes/utils/Routes_names.dart';

class ScreenOneProfessional extends StatefulWidget {
  ScreenOneProfessional({
    super.key,
  });

  @override
  State<ScreenOneProfessional> createState() => _screenoneState();
}

class _screenoneState extends State<ScreenOneProfessional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Screen 1 '),
          backgroundColor: Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RoutesName.ScreenTwoProfessional,
                    arguments: {
                      'hehe': 'hey hi nerd',
                      'birthday': 'today it is'
                    });
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
