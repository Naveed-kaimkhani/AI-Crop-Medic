import 'package:flutter/material.dart';
import 'package:plant_disease_detection/routes/routes_name.dart';
import 'package:plant_disease_detection/ui/screens/detail_page.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case RoutesName.cottonScreen:
      //   return _buildRoute( DetailPage(plan), settings);

      default:
        return _buildRoute(
            const Scaffold(
              body: Center(
                child: Text("NO Route Found"),
              ),
            ),
            settings);
    }
  }

  static _buildRoute(Widget widget, RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => widget, settings: settings);
  }
}
