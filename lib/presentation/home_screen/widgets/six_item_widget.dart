import 'package:flutter/material.dart';

import 'package:travel_explorer/core/utils/image_constant.dart';

import 'package:travel_explorer/core/utils/size_utils.dart';

import 'package:travel_explorer/theme/custom_text_style.dart';
import 'package:travel_explorer/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class SixItemWidget extends StatelessWidget {
  const SixItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Card(
        elevation: 3,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage1,
              height: 200.v,
              width: 400.v,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 7.h,
                  bottom: 29.v,
                ),
                child: Text(
                  "Jaipur, Rajasthan",
                  style: CustomTextStyles.titleSmallImbueWhiteA700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
