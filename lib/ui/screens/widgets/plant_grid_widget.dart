import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plant_disease_detection/constants.dart';
import 'package:plant_disease_detection/models/plants.dart';

class PlantGrid extends StatelessWidget {
  final List<Plant> plantList;
  final ValueChanged<int> onSelected;

  const PlantGrid({
    Key? key,
    required this.plantList,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      itemCount: plantList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => onSelected(index),
          child: Container(
            decoration: BoxDecoration(
              color: Constants.primaryColor.withOpacity(.8),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Padding(
              padding:  EdgeInsets.all(8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(plantList[index].imageURL),
                  SizedBox(height: 3.h),
                  Text(
                    plantList[index].plantName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    plantList[index].description ?? '',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12.sp,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
