import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bottuns.dart';
import 'caroulseu_image.dart';
import 'texts.dart';

containerSecundary() {
  return Container(
    width: 351.w,
    height: 579,
    padding: EdgeInsets.only(left: 12, top: 8, right: 12, bottom: 8),
    decoration: BoxDecoration(
      color: Colors.blueGrey[50],
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      children: [
        timeButton(),
        SizedBox(
          height: 16,
        ),
        carouselImages(),
        SizedBox(
          height: 16,
        ),
        _chacksContainer(),
        SizedBox(
          height: 16,
        ),
        _containerInfosAll(),
        SizedBox(
          height: 15,
        ),
        Divider(color: Colors.grey),
        bottomReserv()
      ],
    ),
  );
}

_chacksContainer() {
  return Container(
    width: 327.w,
    height: 40,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        chackInWidget(),
        Divider(
          height: 8,
        ),
        chackOutWidget()
      ],
    ),
  );
}

_containerInfosAll() {
  return Container(
    width: 327.w,
    height: 145,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        containerInfos(),
        SizedBox(
          height: 4,
        ),
        _infosListail(),
      ],
    ),
  );
}

_infosListail() {
  return Container(
    height: 82,
    width: 351.w,
    padding: EdgeInsets.only(top: 4),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          alignment: WrapAlignment.start,
          direction: Axis.horizontal,
          children: [
            infoMinimumReserve(),
            infoCapacity(),
            SizedBox(
              height: 8,
            ),
            infoAmount(),
          ],
        ),
      ],
    ),
  );
}

containerInitial() {
  return Container(
    width: 375.w,
    height: 185,
    padding: EdgeInsets.only(left: 16, top: 56, right: 16),
    child: Column(
      children: [
        cardItemAppBarWithRadius(),
        SizedBox(
          height: 16,
        ),
        cardItemAproximada(),
      ],
    ),
  );
}
