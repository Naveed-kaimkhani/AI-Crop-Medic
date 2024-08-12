import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';

class PlantSearch extends StatelessWidget {
  final Size size;

  const PlantSearch({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            width: size.width * .9,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  color: Colors.black54.withOpacity(.6),
                  size: 24.sp,
                ),
                Expanded(
                  child: TextField(
                    showCursor: false,
                    decoration: InputDecoration(
                      hintText: 'Search Plant',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintStyle: TextStyle(fontSize: 16.sp),
                    ),
                  ),
                ),
                Icon(
                  Icons.mic,
                  color: Colors.black54.withOpacity(.6),
                  size: 24.sp,
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Constants.primaryColor.withOpacity(.1),
              borderRadius: BorderRadius.circular(20.r),
            ),
          )
        ],
      ),
    );
  }
}
