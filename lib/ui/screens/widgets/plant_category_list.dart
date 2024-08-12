import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_disease_detection/constants.dart';

class PlantCategoryList extends StatelessWidget {
  final List<String> plantTypes;
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  const PlantCategoryList({
    Key? key,
    required this.plantTypes,
    required this.selectedIndex,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      height: 50.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: plantTypes.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(8.w),
            child: GestureDetector(
              onTap: () => onSelected(index),
              child: Text(
                plantTypes[index],
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: selectedIndex == index
                      ? FontWeight.bold
                      : FontWeight.w300,
                  color: selectedIndex == index
                      ? Constants.primaryColor
                      : Constants.blackColor,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
