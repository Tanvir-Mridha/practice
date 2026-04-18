import 'package:flutter/material.dart';

import '../module_12/class_2.dart';
import '../module_12/class_3.dart';
import 'class_1.dart';
import 'class_2.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectIndex = 0;
  List _pages =[
     Module12Class2(),
    Module12Class3(),
    Module13Class1(),
    Module13Class2()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue.shade300,
            Colors.purple.shade300,

          ])
        ),
        child: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.blue,
            labelTextStyle: MaterialStateProperty.resolveWith(
                (state){
                  if(state.contains(MaterialState.selected)){
                    return TextStyle(color: Colors.blue,fontSize: 20);
                  }
                  else{
                    return TextStyle(color: Colors.grey,fontSize: 18);
                  }
        
                }
            ),
              iconTheme: MaterialStateProperty.resolveWith(
                      (state){
                    if(state.contains(MaterialState.selected)){
                      return IconThemeData(color: Colors.white);
                    }
                    else{
                      return IconThemeData(color: Colors.black);
                    }
        
                  }
              )
        
        
        
          ),
          child: NavigationBar(
            backgroundColor: Colors.transparent,
            selectedIndex: _selectIndex,
            onDestinationSelected:(int index){
              setState(() {
                _selectIndex = index;
          
              });
            },
              destinations: [
                NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                NavigationDestination(icon: Icon(Icons.message), label: 'Inbox'),
                NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
                NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
              ]),
        ),
      ),
    );
  }
}
