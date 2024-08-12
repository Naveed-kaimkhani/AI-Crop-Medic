import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:plant_disease_detection/images.dart';
import 'package:plant_disease_detection/models/plants.dart';
import 'package:plant_disease_detection/provider/language_provider.dart';
import 'package:plant_disease_detection/ui/screens/widgets/plant_category_list.dart';
import 'package:plant_disease_detection/ui/screens/widgets/plant_grid_widget.dart';
import 'package:plant_disease_detection/ui/screens/widgets/plant_search.dart';
import 'package:provider/provider.dart';

import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);
    Size size = MediaQuery.of(context).size;
    List<Plant> _plantList = [
      Plant(
          plantName: languageProvider.rice,
          imageURL: Images.rice,
          description: languageProvider.rice_des),
          
      Plant(
          plantName: languageProvider.wehat,
          imageURL: Images.wheat,
          description: languageProvider.wheat_des),
          
      Plant(
          plantName: languageProvider.sugarcane,
          imageURL: Images.sugarcane,
          description: languageProvider.sugarcane_des),
          
      Plant(
          plantName: languageProvider.cotton,
          imageURL: Images.cotton,
          description: languageProvider.cotton_des),
    ];

    //Plants category
    List<String> _plantTypes = [
      'Recommended',
      'Indoor',
      'Outdoor',
      'Garden',
      'Supplement',
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PlantSearch(size: size),
            PlantCategoryList(
              plantTypes: _plantTypes,
              selectedIndex: selectedIndex,
              onSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
            SizedBox(
              height: size.height * .6,
              child: PlantGrid(
                plantList: _plantList,
                onSelected: (index) {
              
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
