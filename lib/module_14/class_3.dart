import 'package:flutter/material.dart';
class Module14Class3 extends StatelessWidget {
  const Module14Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class 3'),
      ),
      body:
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 35,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(16),bottom:Radius.circular(16) ),
                          child: Image.network('https://cdn.ostad.app/user/avatar/2026-01-02T15-12-00.273Z-cropped_image%20(1)%20(1).png',height: 120,fit: BoxFit.cover,),
                        ),
                        Padding(
                          
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text('Test Product',style: TextStyle( fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              Text('500')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Stack(
                        children:[
                          CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage('https://cdn.ostad.app/user/avatar/2026-01-02T15-12-00.273Z-cropped_image%20(1)%20(1).png'),
                      ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                border: Border.all(color: Colors.white,width: 2)
                            
                              ),
                            ),
                          )
                        ]
                      ),
                      Text('Tanvir Mridha',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                      Text('tanvirmridha@gmail.com',style: TextStyle(fontSize: 14),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Stack(
                    children: [
                      Icon(Icons.notification_important_rounded,size: 50,),
                      Positioned(
                        right: 0,
              
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle
                          ),
                          child: Text('2',style: TextStyle(color: Colors.white,fontSize: 12),),
                        ),
                      )
                    ],
                  ),
                  Card(
                    child: ExpansionTile(title: Text('Order Details'),
                      leading: Icon(Icons.receipt),
                      children: [
                        Card( elevation: 35,child: ListTile(title: Text('Order Id : 2478'),)),
                        Card( elevation: 35,child: ListTile(title: Text('Order Id : 2478'),)),
                        Card( elevation: 35,child: ListTile(title: Text('Order Id : 2478'),)),
                        Card( elevation: 35,child: ListTile(title: Text('Order Id : 2478'),)),
              
              
                      ],
                    ),
                  ),
                  Stepper(
                    connectorColor: MaterialStateProperty.all(Colors.blue),
                    currentStep: 2,
                      steps: [
                        Step(title: Text('Order Placed'), content: SizedBox()),
                        Step(title: Text('Order confirm'), content: SizedBox()),
                        Step(title: Text('Processing'), content: SizedBox()),
                        Step(title: Text('Delivered'), content: SizedBox()),
                      ]
                  )
              
              
                ],
              ),
            ),
          )
    );
  }
}
