import 'package:flutter/material.dart';
import 'package:travel_explorer/contants.dart';
import 'package:travel_explorer/core/utils/image_constant.dart';

import 'package:travel_explorer/core/utils/size_utils.dart';
import 'package:travel_explorer/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class SixteenItemWidget extends StatelessWidget {
  int index;
  SixteenItemWidget({Key? key, required this.index})
      : super(
          key: key,
        );

  List<CategoryModel> category = [
    CategoryModel(catName: 'Mountain', catimg: ImageConstant.imgImage2),
    CategoryModel(catName: 'Beach', catimg: ImageConstant.imgImage3),
    CategoryModel(catName: 'Forest', catimg: ImageConstant.imgImage4),
    CategoryModel(catName: 'Desert', catimg: ImageConstant.imgImage5),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
      ),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: grey,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: category[index].catimg,
            height: 22.adaptSize,
            width: 22.adaptSize,
            radius: BorderRadius.circular(
              9.h,
            ),
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 1.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 1.v,
            ),
            child: Text(
              category[index].catName,
              style: jaldi(size: 12, color: black, weight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryModel {
  String catName;
  String catimg;

  CategoryModel({required this.catName, required this.catimg});
}
