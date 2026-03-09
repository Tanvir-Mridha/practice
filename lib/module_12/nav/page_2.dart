import 'package:flutter/material.dart';
import 'package:practice/module_12/nav/page_1.dart';
import 'package:practice/module_12/nav/page_3.dart';
class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Page-2'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page1()));
          }, child: Text('Page-1')),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Page3()));
          }, child: Text('Page-3'))
        ],
      ),
    ),
  );
  }
}
