import'package:flutter/material.dart';
import 'package:practice/module_14/responsive_ui.dart';

import '../module_12/class_3.dart';
import 'class_1.dart';
class SpalashScreen extends StatefulWidget {
  const SpalashScreen({super.key});

  @override
  State<SpalashScreen> createState() => _SpalashScreenState();
}

class _SpalashScreenState extends State<SpalashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateNextPage();

  }
  void navigateNextPage(){
    Future.delayed( Duration(seconds: 5),(){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ResponsiveUi()),
      );
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.deepPurple,
        child: Image.asset('asset/img.png',width: 20,),

      ),
    );
  }
}
