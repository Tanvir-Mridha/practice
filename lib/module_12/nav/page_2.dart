import 'package:flutter/material.dart';
import 'package:practice/module_12/nav/page_1.dart';
import 'package:practice/module_12/nav/page_3.dart';

class Page2 extends StatelessWidget {
  final String name; // required
  const Page2({super.key, this.name = 'tana'});

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
            Text(
              name,
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page1()),
                );
              },
              child: Text('Page-1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
              child: Text('Page-3'),
            ),
          ],
        ),
      ),
    );
  }
}