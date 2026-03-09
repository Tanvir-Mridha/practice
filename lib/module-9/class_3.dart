//hello this is tanvir's update
import 'package:flutter/material.dart';
class classThree extends StatelessWidget {
  const classThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade500,
      appBar: AppBar(
        title: Text('Hello This is class Three'),
        backgroundColor: Colors.red[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  //borderRadius: BorderRadius.circular(10)
                  borderRadius: BorderRadius.circular(10)
                  //borderRadius: BorderRadius.only(topLeft: Radius.circular(10))
                )
              ),

                onPressed: (){},
                child: Text('Button')

            ),
            SizedBox(height: 10,),
            SizedBox(
              width: 100,
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        //borderRadius: BorderRadius.circular(10)
                          borderRadius: BorderRadius.circular(10)
                        //borderRadius: BorderRadius.only(topLeft: Radius.circular(10))
                      )
                  ),

                  onPressed: (){
                    print('Hello Clicked');
                  },
                  child: Text('Button')

              ),
            ),
            SizedBox(height: 10,),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
                onPressed: (){}, child: Text('Submit')),
            TextButton(onPressed: (){}, child: Text('Read more')),
            Icon(Icons.delete,color: Colors.red,size: 50,),
            IconButton(onPressed: (){print("Calling");}, icon: Icon(Icons.call,color: Colors.red,size: 50,),),
            GestureDetector(
               onTap:(){
                print('One Tap');
               },
                onLongPress: (){
                print('longpresed');
                },
                onDoubleTap: (){
                 print("DoubleTap");

             },

                child: Text('This is a text')),
            InkWell(
                onTap:(){
                  print('One Tap');
                },
                onLongPress: (){
                  print('longpresed');
                },
                onDoubleTap: (){
                  print("DoubleTap");

                },child: Text('AnotherText'))

          ],
        ),
      )

    );
  }
}
