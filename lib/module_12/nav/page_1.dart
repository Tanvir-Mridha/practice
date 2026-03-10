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
            // Replace current page with Page2
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Page2(name: 'Tanvir')),
                );
              },
              child: Text('Nav-2'),
            ),
            // Push Page2 normally
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2(name: 'tanvir mridha')),
                );
              },
              child: Text('Page-2'),
            ),
            // Push Page3
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
              child: Text('Page-3'),
            ),
            Divider(),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/page2');
            }, child: Text('Navi 2.0 Page-2')),
            ElevatedButton(onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context, '/page2',(route)=>false);
            }, child: Text('Navi 2.0 Page-2 Replace'))
          ],
        ),
      ),
    );
  }
}