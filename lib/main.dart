import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_disease_detection/provider/language_provider.dart';
import 'package:plant_disease_detection/ui/screens/detail_page.dart';
import 'package:plant_disease_detection/ui/screens/disease_list_screen.dart';
import 'package:provider/provider.dart';
import 'package:plant_disease_detection/ui/root_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LanguageProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Base size for the UI design
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Plant Disease Detection',
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          home: DetailPage(plantId: 1),
        );
      },
    );
  }
}
