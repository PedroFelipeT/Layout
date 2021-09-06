import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

carouselImages() {
  return SizedBox(
    width: 327.w,
    height: 163,
    child: Carousel(
      images: [
        NetworkImage(
            'https://blog.marelli.com.br/wp-content/uploads/2017/10/sala-reunioes-marelli-florianopolis.jpg'),
        NetworkImage(
            'https://blog.marelli.com.br/wp-content/uploads/2017/10/sala-de-reunioes.png'),
        ExactAssetImage("assets/imagem.png")
      ],
      dotSize: 4.0,
      dotSpacing: 15.0,
      dotColor: Colors.white,
      indicatorBgPadding: 5.0,
      dotBgColor: Colors.transparent,
      borderRadius: true,
    ),
  );
}
