import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

containerInfos() {
  return Container(
    width: 163.w,
    height: 59,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sala de Reunião 04",
          style: TextStyle(
            fontFamily: 'Inter',
            color: Color(0xff229ef1),
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
          textScaleFactor: 1.0,
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          "Sala de reunião Privativa",
          style: TextStyle(
            fontFamily: 'Inter',
            color: Color(0xff7a7e80),
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          "Salas de Reunião Menores",
          style: TextStyle(
            fontFamily: 'Inter',
            color: Color(0xff7a7e80),
            fontSize: 12,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
        ),
      ],
    ),
  );
}

infoMinimumReserve() {
  return Container(
    width: 170.w,
    height: 32,
    child: ListTile(
      dense: true,
      contentPadding: EdgeInsets.only(left: 10.0),
      title: Transform(
        transform: Matrix4.translationValues(-40, -15.0, 0.0),
        child: Text(
          "Reserva mínima",
          style: TextStyle(
            fontFamily: 'Inter',
            color: Color(0xff464a4d),
            fontSize: 12,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      subtitle: Transform(
        transform: Matrix4.translationValues(-40, -15.0, 0.0),
        child: Text(
          "12 horas",
          style: TextStyle(
            fontFamily: 'Inter',
            color: Color(0xff464a4d),
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      leading: Transform(
        transform: Matrix4.translationValues(-8, -15.0, 0.0),
        child: Icon(
          Icons.people_alt,
          color: Colors.grey[800],
          size: 15,
        ),
      ),
    ),
  );
}

infoCapacity() {
  return Container(
    width: 140.w,
    height: 32,
    child: ListTile(
      dense: true,
      contentPadding: EdgeInsets.only(left: 10.0),
      title: Transform(
        transform: Matrix4.translationValues(-40, -15.0, 0.0),
        child: Text(
          "Capacidade",
          style: TextStyle(
            fontFamily: 'Inter',
            color: Color(0xff464a4d),
            fontSize: 12,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      subtitle: Transform(
        transform: Matrix4.translationValues(-40, -15.0, 0.0),
        child: Text(
          "11 pessoas",
          style: TextStyle(
            fontFamily: 'Inter',
            color: Color(0xff464a4d),
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      leading: Transform(
        transform: Matrix4.translationValues(-15, -16.0, 0.0),
        child: Icon(
          Icons.supervised_user_circle,
          color: Colors.grey[800],
          size: 20,
        ),
      ),
    ),
  );
}

infoAmount() {
  return Container(
    width: 150.w,
    height: 34,
    child: ListTile(
      dense: true,
      contentPadding: EdgeInsets.only(left: 10.0),
      title: Transform(
        transform: Matrix4.translationValues(-40, -5.0, 0.0),
        child: Text(
          "Valor Total",
          maxLines: 1,
          style: TextStyle(
            fontFamily: 'Inter',
            color: Color(0xff464a4d),
            fontSize: 12,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      subtitle: Transform(
        transform: Matrix4.translationValues(-40, -5.0, 0.0),
        child: Text(
          "R\$3.732,70",
          style: TextStyle(
            fontFamily: 'Inter',
            color: Color(0xff464a4d),
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      leading: Transform(
        transform: Matrix4.translationValues(-10, -5, 0.0),
        child: Icon(
          Icons.attach_money_outlined,
          color: Colors.black,
          size: 20,
        ),
      ),
    ),
  );
}
