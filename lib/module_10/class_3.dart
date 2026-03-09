import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Module10Class3 extends StatelessWidget {
  const Module10Class3({super.key});

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive'),
        backgroundColor: Colors.blue,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            orientation == Orientation.portrait? Column(
              children: [
                Container(
                  height: 150.h,
                  width: 300.h,
                  color: Colors.red,
                ),
                Text('Test Text',
                  style: TextStyle(
                      fontSize: 18.sp
                  ),),
                Container(
                  height:150.h ,
                  width:300.h ,
                  color: Colors.green,
                ),
                Text('Test Text Two',
                  style: TextStyle(
                    fontSize: 20.sp,
                  ),),
              ],

            ) : Row (
              children: [
                Container(
                  height: 150.h,
                  width: 300.h,
                  color: Colors.red,
                ),
                Text('Test Text',
                  style: TextStyle(
                      fontSize: 18.sp
                  ),),
                Container(
                  height:150.h ,
                  width:300.h ,
                  color: Colors.green,
                ),
                Text('Test Text Two',
                  style: TextStyle(
                    fontSize: 20.sp,
                  ),),
              ],

            )

          ],
        ),
      ),
    );
  }
}
