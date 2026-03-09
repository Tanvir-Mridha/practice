import 'package:flutter/material.dart';
import 'package:practice/module_12/nav/page_1.dart';
import 'package:practice/module_12/nav/page_2.dart';
class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page-3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
            }, child: Text('Page-2')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()));
            }, child: Text('Page-1'))
          ],
        ),
      ),
    );
  }
}
