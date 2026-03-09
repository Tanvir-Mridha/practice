import 'package:flutter/material.dart';
class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    void showlertDialog(){
      showDialog(context: context, builder: (context)=>AlertDialog(
        icon: Icon(Icons.delete,color: Colors.green),
        title: Text('This is title'),
        content: Text('This is content'),
        actions: [
          TextButton(onPressed: (){}, child: Text('Yes')),
          TextButton(onPressed: (){}, child: Text('No')),


        ],
      ));
    }
    void simpleDialog(){
      showDialog(context: context, builder: (context)=>SimpleDialog(
      ));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),
    );
  }
}
