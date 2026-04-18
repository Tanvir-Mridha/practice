import 'package:flutter/material.dart';

class Module12Class3 extends StatefulWidget {
  const Module12Class3({super.key});

  @override
  State<Module12Class3> createState() => _Module12Class3State();
}

class _Module12Class3State extends State<Module12Class3> {
  bool selected = false;
  bool showMassage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  selected = !selected;
                });
              },
              child: AnimatedContainer(duration: Duration(milliseconds:300),
                height:selected? 120:170,
                width: selected? 120:170,
                decoration: BoxDecoration(
                  color:selected? Colors.red: Colors.green,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                height:selected? 120:170,
                width: selected? 120:170,
                decoration: BoxDecoration(
                    color:selected? Colors.red: Colors.green,
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
            Divider(),
            ElevatedButton(onPressed: (){
              setState(() {
                showMassage = !showMassage;
              });
            }, child: Text('Add to Cart')),
            AnimatedOpacity(opacity: showMassage? 1 : 0,
              duration: Duration(milliseconds: 900),
              child:Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Added to cart',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),

            ),
            SizedBox(height: 20,),
            AnimatedAlign(alignment: showMassage ? Alignment.topRight:Alignment.topLeft, duration: Duration(milliseconds: 900),child: CircleAvatar(
              backgroundImage: NetworkImage('https://cdn.ostad.app/user/avatar/2026-01-02T15-12-00.273Z-cropped_image%20(1)%20(1).png'),
              radius: 30,
            ),),
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      showMassage = !showMassage;
                    });
                  }, child: Text('Toggle Button')),
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 900),
                    bottom: showMassage ? 0 :-120,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 120,
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: Text('Test'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
