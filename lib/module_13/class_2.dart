import 'dart:async';
import 'package:flutter/material.dart';

class Module13Class2 extends StatefulWidget {
  Module13Class2({super.key}) {
    print('1 constructor');
  }

  @override
  State<Module13Class2> createState() {
    print('2 constructor');
    return _Module13Class2State();
  }
}

class _Module13Class2State extends State<Module13Class2> {
  String name = 'Tanvir';
  int seconds = 0;
  Timer? time;

  @override
  void initState() {
    super.initState();
    print('3 initstate');

    name = 'abc';
    seconds = 10;

    time = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        seconds++;
      });
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('4 didChangeDependencies');
  }

  @override
  void dispose() {
    time?.cancel(); // very important
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('5 Build call');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(height: 20),
            Text(
              "Time Runing: $seconds",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              name = "TM";
            }, child: Text('Change Name'))
          ],
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant Module13Class2 oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);

  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

}
