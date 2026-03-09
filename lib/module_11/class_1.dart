import 'package:flutter/material.dart';
class Module11Class1 extends StatelessWidget {
  const Module11Class1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List')
      ),
      body:ListView.builder(
        itemCount:20,
        itemBuilder: (context,index){
          return Card(
            color: Colors.green,
                    elevation: 5,
                    child: ListTile(
                      title: Text('Tanvir Mridha $index'),
                      subtitle: Text('01747009102'),
                      leading: Icon(Icons.phone),
                      trailing: Icon(Icons.delete,color: Colors.red,),
                    ),
                  );

      }

      )
      // ListView(
      //   children: [
      //     Card(
      //       elevation: 1,
      //       color: Colors.green,
      //       child: ListTile(
      //         title: Text('Tanvir Mridha'),
      //         subtitle: Text('01747009102'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Tanvir Mridha'),
      //         subtitle: Text('01747009102'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Tanvir Mridha'),
      //         subtitle: Text('01747009102'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Tanvir Mridha'),
      //         subtitle: Text('01747009102'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Tanvir Mridha'),
      //         subtitle: Text('01747009102'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Tanvir Mridha'),
      //         subtitle: Text('01747009102'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Tanvir Mridha'),
      //         subtitle: Text('01747009102'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Tanvir Mridha'),
      //         subtitle: Text('01747009102'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Tanvir Mridha'),
      //         subtitle: Text('01747009102'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Tanvir Mridha'),
      //         subtitle: Text('01747009102'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Tanvir Mridha'),
      //         subtitle: Text('01747009102'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Tanvir Mridha'),
      //         subtitle: Text('01747009102'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Tanvir Mridha'),
      //         subtitle: Text('01747009102'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Tanvir Mridha'),
      //         subtitle: Text('01747009102'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Tanvir Mridha'),
      //         subtitle: Text('01747009102'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Tanvir Mridha'),
      //         subtitle: Text('01747009102'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //     Card(
      //       child: ListTile(
      //         title: Text('Tanvir Mridha'),
      //         subtitle: Text('01747009102'),
      //         leading: Icon(Icons.phone),
      //         trailing: Icon(Icons.delete,color: Colors.red,),
      //       ),
      //     ),
      //
      //
      //
      //
      //
      //   ],
      // ),
    );
  }
}
