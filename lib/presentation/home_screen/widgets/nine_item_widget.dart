import 'package:flutter/material.dart';
import 'package:travel_explorer/contants.dart';

import 'package:travel_explorer/core/utils/size_utils.dart';

import 'package:travel_explorer/theme/app_decoration.dart';
import 'package:travel_explorer/theme/custom_text_style.dart';
import 'package:travel_explorer/theme/theme_helper.dart';

// ignore: must_be_immutable
class NineItemWidget extends StatelessWidget {
  int index;
  NineItemWidget({Key? key, required this.index})
      : super(
          key: key,
        );

  List<PackageModel> package = [
    PackageModel(
        destination: 'Kerala: ',
        places: 'Alleppy, Kovalam, Munnar',
        days: '5',
        nights: '6',
        price: '18,900'),
    PackageModel(
        destination: 'Kashmir: ',
        places: 'Gulmarg, Pahalgam, Srinagar, Sonagar',
        days: '8',
        nights: '9',
        price: '45,500'),
    PackageModel(
        destination: 'Sikkim: ',
        places: 'Gantok, Lachen, Lachung, Bagdog',
        days: '6',
        nights: '7',
        price: '19,000'),
    PackageModel(
        destination: 'Andaman: ',
        places: 'Port Bihar, Neil Island, Havel',
        days: '7',
        nights: '8',
        price: '35,900')
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        margin: const EdgeInsets.all(0),
        color: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: grey,
            width: 1.h,
          ),
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Container(
          height: 80.v,
          width: 350.h,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 1.v,
          ),
          decoration: AppDecoration.outlineBlack900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 250.h,
                  margin: EdgeInsets.only(left: 1.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: package[index].destination,
                              style: inknut(
                                  size: 12,
                                  color: black,
                                  weight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: package[index].places,
                              style: inknutoverflow(
                                size: 9,
                                color: black,
                                weight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Row(
                        children: [
                          dot,
                          width5,
                          Text(
                            "${package[index].days} Days, ${package[index].nights} Nights",
                            style: jaldi(
                                size: 8,
                                color: grey,
                                weight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          dot,
                          width5,
                          Text(
                            "Twin sharing rooms",
                            style: jaldi(
                                size: 8,
                                color: grey,
                                weight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          dot,
                          width5,
                          Text(
                            "Sightseeing in a private AC cab",
                            style: jaldi(
                                size: 8,
                                color: grey,
                                weight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          dot,
                          width5,
                          Text(
                            "Breakfast, Lunch, Dinner",
                            style: jaldi(
                                size: 8,
                                color: grey,
                                weight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 12.h,
                    bottom: 6.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "₹ ${package[index].price}",
                        style: theme.textTheme.titleMedium,
                      ),
                      Text(
                        "per person",
                        style: CustomTextStyles.bodySmallLailaBlack900,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PackageModel {
  String destination;
  String places;
  String days;
  String nights;
  String price;

  PackageModel({
    required this.destination,
    required this.places,
    required this.days,
    required this.nights,
    required this.price,
  });
}

Container dot = Container(
  height: 2.adaptSize,
  width: 2.adaptSize,
  decoration: BoxDecoration(
    color: appTheme.black900.withOpacity(0.5),
    borderRadius: BorderRadius.circular(
      1.h,
    ),
  ),
);
