import 'package:flutter/material.dart';
class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    bool _isClicked = true;
    void showAlertDialog(){
      showDialog(context: context, builder: (context)=> AlertDialog(
        icon: Icon(Icons.delete,color:Colors.red,size: 50,),
        title: Text("This Title"),
        content: Text('Are you sure.....?'),
        actions: [
          ElevatedButton(onPressed: (){}, child: Text('Yes')),
          ElevatedButton(onPressed: (){}, child: Text('No'))
        ],

      ));

    }
    void showSimpleDialog(){
      showDialog(context: context, builder: (context)=> SimpleDialog(
        title: Text("This Title"),
        children: [
          SimpleDialogOption(
            onPressed: () {},
            child: Text('English'),
          ),
          SimpleDialogOption(
            onPressed: () {
              print("Clicked");
            },
            child: Text('English'),
          ),
          SimpleDialogOption(
            onPressed: () {
              print("Clicked");
            },
            child: Text('English'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Enter Your age ...?'),
                TextField(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(onPressed: (){}, child: Text('Cancel')),
                    ElevatedButton(onPressed: (){}, child: Text('Submit'))
                  ],
                )
              ],
            ),
          )
        ],

      ));

    }
    void showSnackbar(){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Item deleted'),
        action: SnackBarAction(label: 'undo', onPressed: (){}),),
      );
    }
    void showBottomSheet(){
      showModalBottomSheet(context: context, builder: (context)=>Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Chosse Option'),
            ListTile(
              title: Text('Option -1 '),
            ),
            ListTile(
              title: Text('Option -1 '),
            ),
            ListTile(
              title: Text('Option -1 '),
            ),
            ListTile(
              title: Text('Option -1 '),
            ),
          ],
        ),

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
            ElevatedButton(onPressed: (){showAlertDialog();}, child: Text('Alert Dialog')),
            ElevatedButton(onPressed: (){showSimpleDialog();}, child: Text('Alert Dialog')),
            ElevatedButton(onPressed: (){showSnackbar();}, child: Text('Simple Snackbar')),
            ElevatedButton(onPressed: (){showBottomSheet();}, child: Text('Bottom Sheet')),
            Checkbox(value: _isClicked, onChanged: (value){
              _isClicked = !_isClicked;

            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Option-1'),
                Radio(value:  1, groupValue: 1, onChanged:(value){

                } ,),
                Text('Option-2'),
                Radio(value:  1, groupValue: 1, onChanged:(value){

                } ,),
                Text('Option-3'),
                Radio(value:  1, groupValue: 1, onChanged:(value){

                } ,)
              ],
            )


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print('test');
      },child: Icon(Icons.add),),
    );
  }
}
