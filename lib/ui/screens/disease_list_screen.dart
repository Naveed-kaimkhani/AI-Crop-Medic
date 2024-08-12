
import 'package:flutter/material.dart';

class DiseaseListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {'id': 1, 'name': 'Alder', 'species': 'Alnus'},
    {'id': 2, 'name': 'Black alder', 'species': 'Alnus glutinosa, Ilex verticillata'},
    {'id': 3, 'name': 'Common alder', 'species': 'Alnus glutinosa'},
    {'id': 4, 'name': 'False alder', 'species': 'Ilex verticillata'},
    {'id': 5, 'name': 'Gray alder', 'species': 'Alnus incana'},
  ];

  void navigateToDetailedScreen(BuildContext context) {
    Navigator.pushNamed(context, 'DetailedScreen');
  }

  Widget renderPlantDisease(BuildContext context, Map<String, dynamic> plant) {
    return GestureDetector(
      onTap: () => navigateToDetailedScreen(context),
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(27),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              offset: Offset(1, 1),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 97,
              height: 76,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                'assets/images/potato.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 17),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Potato Eraly Bright',
                  style: TextStyle(
                    fontFamily: 'comicneuebold',
                    color: Color(0xFF195F57),
                  ),
                ),
                Text(
                  'Mango, Apple, Orange',
                  style: TextStyle(
                    fontFamily: 'comicneueregular',
                    color: Color(0xFF195F57),
                  ),
                ),
                Text(
                  'Fungens',
                  style: TextStyle(
                    fontFamily: 'comicneueregular',
                    color: Color(0xFF195F57),
                  ),
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/images/next.png',
              width: 29,
              height: 58,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 230,
            height: 453,
            decoration: BoxDecoration(
              color: Color(0xFF5BB59B),
              borderRadius: BorderRadius.vertical(top: Radius.circular(27)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return renderPlantDisease(context, data[index]);
              },
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/blob1.png',
              width: 490,
              height: 287,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 111,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.16),
                    offset: Offset(1, 1),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Other',
                            style: TextStyle(
                              fontFamily: 'comicneuebold',
                              color: Color(0xFF195F57),
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Pests & Diseases',
                            style: TextStyle(
                              fontFamily: 'comicneuebold',
                              color: Color(0xFF195F57),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/agriculture.png',
                        width: 71,
                        height: 63,
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Browse throgh plant diseases.',
                    style: TextStyle(
                      fontFamily: 'comicneuebold',
                      color: Color(0xFF195F57),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}