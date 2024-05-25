// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_explorer/contants.dart';
import 'package:travel_explorer/core/utils/image_constant.dart';
import 'package:travel_explorer/core/utils/size_utils.dart';
import 'package:travel_explorer/presentation/home_screen/widgets/nine_item_widget.dart';
import 'package:travel_explorer/presentation/home_screen/widgets/six_item_widget.dart';
import 'package:travel_explorer/presentation/home_screen/widgets/sixteen_item_widget.dart';
import 'package:travel_explorer/theme/custom_text_style.dart';
import 'package:travel_explorer/theme/theme_helper.dart';
import 'package:travel_explorer/widgets/custom_image_view.dart';
import 'package:travel_explorer/widgets/custom_search_view.dart';

import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          actions: [
            Icon(
              Icons.notifications_none_outlined,
              color: black,
              size: 30,
            ),
            width10
          ],
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 5,
              backgroundColor: grey,
            ),
          ),
          title: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'Hello, ',
                style:
                    jaldi(size: 14, color: black, weight: FontWeight.normal)),
            TextSpan(
                text: 'John',
                style: jaldi(size: 17, color: red, weight: FontWeight.bold))
          ])),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 7.v),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 5.v),
                _buildTwentyFive(context),
                SizedBox(height: 20.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 21.h, bottom: 10.h),
                    child: Text(
                      "Popular places in India",
                      style: inknut(
                        size: 13,
                        color: Colors.black,
                        weight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.v),
                _buildTwentyThree(context),
                SizedBox(height: 8.v),
                _buildTwentySix(context),
                SizedBox(height: 10.v),
                _buildTwenty(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return SizedBox(
      height: 110.v,
      width: 357.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "search destination",
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMiFilter,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(
                    left: 7.h,
                    top: 5.v,
                    bottom: 5.v,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 300.h,
              margin: EdgeInsets.only(left: 1.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Where do you want to\nexplore ",
                        style: inknutspacing(
                            spacing: 2,
                            size: 15,
                            color: Colors.black,
                            weight: FontWeight.w400)),
                    TextSpan(
                      text: "TODAY",
                      style:
                          inknut(size: 20, color: red, weight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: "!",
                      style: CustomTextStyles.titleLargeBold,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyThree(BuildContext context) {
    return SizedBox(
      height: 175.v,
      width: 350.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 175.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (
                index,
                reason,
              ) {
                sliderIndex = index;
              },
            ),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return SixItemWidget();
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 5.v,
              margin: EdgeInsets.only(bottom: 8.v),
              child: AnimatedSmoothIndicator(
                activeIndex: sliderIndex,
                count: 1,
                axisDirection: Axis.horizontal,
                effect: ScrollingDotsEffect(
                  spacing: 3,
                  activeDotColor: appTheme.whiteA700,
                  dotHeight: 5.v,
                  dotWidth: 5.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 70.v,
        width: 372.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Category",
                style: theme.textTheme.titleSmall,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 4.v,
                  right: 20.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "See all",
                      style:
                          jaldi(size: 12, color: grey, weight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: grey,
                      size: 17,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.separated(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 37.v,
                ),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 12.h,
                  );
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return SixteenItemWidget(index: index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwenty(BuildContext context) {
    return SizedBox(
      height: 340.v,
      width: 354.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                top: 33.v,
                right: 1.h,
              ),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 9.v,
                  );
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return NineItemWidget(
                    index: index,
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                top: 7.h,
                left: 2.h,
                bottom: 306.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Popular package",
                    style: theme.textTheme.labelLarge,
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.v,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "See all",
                      style:
                          jaldi(size: 12, color: grey, weight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: grey,
                    size: 17,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
