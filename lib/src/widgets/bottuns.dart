import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final greyColor = Color(0xff464a4d);
final blackColor = Color(0xff0e0f0f);
final whiteColor = Color(0xfff7f9fa);
final lightGreyColor = Color(0xff229ef1);

cardItemAppBarWithRadius() {
  return Container(
    width: 343.w,
    height: 48,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: ListTile(
        onTap: () => print('Click Card Sala de Reunião'),
        leading: Transform(
          transform: Matrix4.translationValues(-10, -6.5, 0.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            padding: EdgeInsets.only(right: 20),
            color: Colors.black,
            onPressed: () {
              print('Click em voltar');
            },
          ),
        ),
        title: Transform(
          transform: Matrix4.translationValues(-30, -6.5, 0.0),
          child: Text("Sala de Reunião",
              style: TextStyle(
                color: greyColor,
                fontWeight: FontWeight.w700,
                fontFamily: "Inter",
                fontStyle: FontStyle.normal,
                fontSize: 14.0,
              ),
              textAlign: TextAlign.left),
        ),
        trailing: Transform(
          transform: Matrix4.translationValues(0, -6.5, 0.0),
          child: Text(
            "14/07 - 14/08",
            style: TextStyle(
              fontFamily: 'Inter',
              color: greyColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    ),
  );
}

cardItemAproximada() {
  return Container(
    width: 343.w,
    height: 50,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: Colors.blue[50],
      child: ListTile(
        onTap: () => print('Área de Disponibilidade'),
        leading: Transform(
          transform: Matrix4.translationValues(0, -10.5, 0.0),
          child: Text(
            "12",
            style: TextStyle(
                color: blackColor,
                fontWeight: FontWeight.w700,
                fontFamily: "Inter",
                fontStyle: FontStyle.normal,
                fontSize: 16),
          ),
        ),
        title: Transform(
          transform: Matrix4.translationValues(-30, -4.5, 0.0),
          child: Text(
            "Áreas com disponibilidade de data e hora aproximada",
            style: TextStyle(
              color: blackColor,
              fontWeight: FontWeight.w400,
              fontFamily: "Inter",
              fontStyle: FontStyle.normal,
              fontSize: 14,
            ),
          ),
        ),
        trailing: Transform(
          transform: Matrix4.translationValues(20, -6.5, 0.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: Colors.blue,
            ),
            onPressed: () {
              print('Click em disponibilidade');
            },
          ),
        ),
      ),
    ),
  );
}

timeButton() {
  return Container(
    width: 327.w,
    height: 20,
    color: Colors.orangeAccent[100],
    child: ElevatedButton.icon(
      onPressed: () {
        print('Click em Horários');
      },
      icon: Icon(
        Icons.people_alt,
        size: 16,
        color: Colors.grey[900],
      ),
      label: Text(
        "Horários aproximados disponíveis",
        style: TextStyle(
          fontFamily: 'Inter',
          color: blackColor,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.orange[200],
      ),
    ),
  );
}

bottomReserv() {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        SizedBox(
          width: 327.w,
          height: 39,
          child: ElevatedButton.icon(
            onPressed: () {
              print('Click em Reservar');
            },
            icon: Icon(
              Icons.bolt,
              size: 35,
            ),
            label: Text("Reservar",
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                )),
            style: ElevatedButton.styleFrom(
              primary: Colors.orange[900],
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
        Text(
          "Este espaço pode ser reservado instantaneamente",
          style: TextStyle(
            fontFamily: 'Inter',
            color: Color(0xff7a7e80),
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
        SizedBox(
          height: 27,
        ),
        InkWell(
          child: Text(
            "Ver detalhes da área",
            style: TextStyle(
                color: lightGreyColor,
                fontWeight: FontWeight.w700,
                fontFamily: "Inter",
                fontStyle: FontStyle.normal,
                fontSize: 14.0),
          ),
          onTap: () => print('Click em detalhes'),
        ),
      ],
    ),
  );
}

chackInWidget() {
  return Container(
    height: 16,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
          ),
          padding: EdgeInsets.only(right: 25),
          color: Colors.black,
          onPressed: () {
            print('Click em voltar');
          },
        ),
        Transform(
          transform: Matrix4.translationValues(-16.h, 4.0, 0.0),
          child: Text(
            "Check-in",
            style: TextStyle(
              fontFamily: 'Inter',
              color: Color(0xff0e0f0f),
              fontSize: 14,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(right: 15)),
        Transform(
          transform: Matrix4.translationValues(-16.h, 4.0, 0.0),
          child: Text(
            "Seg, 27 de Junho 2021 às 16:45",
            style: TextStyle(
              fontFamily: 'Inter',
              color: Color(0xffff6720),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ],
    ),
  );
}

chackOutWidget() {
  return Container(
    height: 16,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
          ),
          padding: EdgeInsets.only(right: 25),
          color: Colors.black,
          onPressed: () {
            print('Click em voltar');
          },
        ),
        Transform(
          transform: Matrix4.translationValues(-16.h, 4.0, 0.0),
          child: Text(
            "Check-out",
            style: TextStyle(
              fontFamily: 'Inter',
              color: Color(0xff0e0f0f),
              fontSize: 14,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(right: 15)),
        Transform(
          transform: Matrix4.translationValues(-25.h, 4.0, 0.0),
          child: Text(
            "Ter, 28 de Junho 2021 às 16:45",
            style: TextStyle(
              fontFamily: 'Inter',
              color: Color(0xffff6720),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ],
    ),
  );
}
