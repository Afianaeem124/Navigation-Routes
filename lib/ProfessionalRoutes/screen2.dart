import 'package:flutter/material.dart';
import 'package:routes/Coventional_method/screen3.dart';
import 'package:routes/ProfessionalRoutes/utils/Routes_names.dart';

class ScreenTwoProfessional extends StatefulWidget {
  dynamic data;
  ScreenTwoProfessional({super.key, required this.data});

  @override
  State<ScreenTwoProfessional> createState() => _screenoneState();
}

class _screenoneState extends State<ScreenTwoProfessional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(widget.data['hehe']), backgroundColor: Colors.yellow),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                    context, RoutesName.ScreenThreeProfessional);
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
