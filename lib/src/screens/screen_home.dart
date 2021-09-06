import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:projeto_mobile/src/widgets/containers.dart';

//Modelo com biblioteca Screenutil
class LayoutHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 797),
      builder: () => Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                containerInitial(),
                Divider(
                  height: 5,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 8,
                ),
                containerSecundary()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
