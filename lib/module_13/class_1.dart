import'package:flutter/material.dart';

class Module13Class1 extends StatefulWidget {
  const Module13Class1({super.key});

  @override
  State<Module13Class1> createState() => _Module13Class1State();
}

class _Module13Class1State extends State<Module13Class1> {
  int number = 0;
  bool isShow = false;
  String longText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris.Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.';
  bool isReadmore = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(number.toString(),style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    number++;
                  });
                }, child: Text('+')),
                SizedBox(width: 20,),
                ElevatedButton(onPressed: (){
                  setState(() {
                    number--;
                  });
                }, child: Text('-')),
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: isShow,
                  decoration: InputDecoration(
                    hintText: 'Password',
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          isShow = !isShow;
                        });
                      }, icon: Icon(isShow? Icons.visibility:Icons.visibility_off))
                  ),
                )),
            IconButton(onPressed: (){
              setState(() {
                isShow = !isShow;
              });
            }, icon: Icon(
                isShow? Icons.favorite: Icons.favorite,
                color:isShow? Colors.grey : Colors.red,
                size:70)
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                  children: [
                    Text(isReadmore?longText:'Lorem ipsum dolor sit amet,consectetur'),
                    TextButton(onPressed: (){
                      setState(() {
                        isReadmore = !isReadmore;
                      });
                    }, child: Text(isReadmore? 'Hide':'Read More'))
                  ],
              ),
            )

          ],
        
        ),
      ),
    );
  }
}
