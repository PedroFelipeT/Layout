import 'package:flutter/material.dart';
import 'src/screens/layout_home.dart';
import 'src/screens/screen_home.dart';

void main() {
  runApp(MaterialApp(
    //home: PageHome(), // Tela usando MediaQuery
    home: LayoutHome(), //Tela com biblioteca flutter_screenutil
    debugShowCheckedModeBanner: false,
  ));
}
