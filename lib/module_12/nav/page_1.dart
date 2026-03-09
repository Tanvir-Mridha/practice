import 'package:flutter/material.dart';
import 'package:practice/module_12/nav/page_2.dart';
import 'package:practice/module_12/nav/page_3.dart';
class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page-1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Page2()));
            }, child: Text('Nav-2')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
            }, child: Text('Page-2')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Page3()));
            }, child: Text('Page-3'))
          ],
        ),
      ),
    );
  }
}
