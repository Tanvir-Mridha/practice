import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice/home.dart';
import 'package:practice/module-9/class_3.dart';
import 'package:practice/module_10/class_1.dart';
import 'package:practice/module_10/class_2.dart';
import 'package:practice/module_10/class_3.dart';
import 'package:practice/module_11/class_1.dart';
import 'package:practice/module_11/class_3.dart';
import 'package:practice/module_12/class_2.dart';
import 'package:practice/module_12/class_3.dart';
import 'package:practice/module_12/nav/page_2.dart';
import 'package:practice/module_12/nav/page_3.dart';
import 'package:practice/module_13/class3.dart';
import 'package:practice/module_13/class_1.dart';
import 'package:practice/module_13/class_2.dart';
import 'package:practice/module_17/screen/api_view.dart';

import 'module_11/class_1_grid.dart';
import 'module_11/class_2.dart';
import 'module_12/nav/page_1.dart';
import 'module_14/class_1.dart';
import 'module_14/splash_screen.dart';
import 'module_16/ui/task_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          // routes: {
          //   '/': (context)=> Module10Class3(),
          //   '/class1': (context)=> Module11Class1(),
          //   '/class2': (context)=> Module11Class2(),
          //   '/class3': (context)=> Alert(),
          //   '/page1': (context)=> Page1(),
          //   '/page2': (context)=> Page2(),
          //   '/page3': (context)=> Page3(),
          //   '/Module12Class2' : (context)=> Module12Class2(),
          //   '/Module12Class3': (context)=> Module12Class3(),
          //   '/Module13Class1': (context)=> Module13Class1(),
          //   '/Module13Class2': (context)=> Module13Class2(),
          //   '/Module13Class3': (context)=> BottomNav(),
          //   '/Module14Class1': (context)=> module14class1 (),
          //   '/SpalashScreen': (context)=> SpalashScreen (),
          // },
          // initialRoute: '/SpalashScreen',

          home: ApiView(),

          theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.deepPurple,
            primarySwatch: Colors.deepPurple,

            scaffoldBackgroundColor: Colors.blue.shade50,

            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                    )
                )
            ),
            inputDecorationTheme: InputDecorationTheme(
                hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.blue
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                )
            ),
              appBarTheme: AppBarTheme(
                backgroundColor: Colors.blue,
                centerTitle: true,
              )


          ),
          debugShowCheckedModeBanner: false,
          title: 'PracticeApp',
          //home: Page1(),
        );

      },
    );

  }
}
