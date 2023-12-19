import 'package:flutter/material.dart';
import 'package:routes/ProfessionalRoutes/screen1.dart';
import 'package:routes/ProfessionalRoutes/screen2.dart';
import 'package:routes/ProfessionalRoutes/screen3.dart';
import 'package:routes/ProfessionalRoutes/utils/Routes_names.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.ScreenOneProfessional:
        return MaterialPageRoute(builder: (context) => ScreenOneProfessional());
      case RoutesName.ScreenTwoProfessional:
        return MaterialPageRoute(
            builder: (context) => ScreenTwoProfessional(
                  data: settings.arguments as Map,
                ));
      case RoutesName.ScreenThreeProfessional:
        return MaterialPageRoute(
            builder: (context) => ScreenThreeProfessional());
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text('No Route Defined')),
          );
        });
    }
  }
}
