import 'package:flutter/material.dart';
import 'package:routes/Coventional_method/screen1.dart';
import 'package:routes/ProfessionalRoutes/utils/Routes.dart';
import 'package:routes/ProfessionalRoutes/utils/Routes_names.dart';
import 'package:routes/Routes/screen1.dart';
import 'package:routes/Routes/screen2.dart';
import 'package:routes/Routes/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      /* 1) 
       // [use for Convetional Method]
      home: ScreenOne(),[use for Convetional Method]
      */
      /* 2)
        //Routes
        initialRoute: ScreenOneRoutes.id,
        routes: {
          ScreenOneRoutes.id: (context) => ScreenOneRoutes(),
          ScreenTwoRoutes.id: (context) =>
              ScreenTwoRoutes(name: '', number: ''),
          ScreenThreeRoutes.id: (context) =>
              ScreenThreeRoutes(name: '', number: ''),
        }
        */
      //PROFESSIONAL
      initialRoute: RoutesName.ScreenOneProfessional,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
