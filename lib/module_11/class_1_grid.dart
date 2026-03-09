import 'package:flutter/material.dart';
class Class1GridView extends StatelessWidget {

  const Class1GridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {"icon": Icons.phone, "title": "Cash Out"},
      {"icon": Icons.send, "title": "Send Money"},
      {"icon": Icons.payment, "title": "Payment"},
      {"icon": Icons.account_balance, "title": "Bank"},
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0

          ),
          itemCount: 4,
          itemBuilder: (context,index){
            return Card(
              color: Colors.red.shade50,
              child: InkWell(
                onTap: () {
                  // Different action based on index
                  if (index == 0) {
                    print("Cash Out Clicked");
                  } else if (index == 1) {
                    print("Send Money Clicked");
                  } else if (index == 2) {
                    print("Payment Clicked");
                  } else if (index == 3) {
                    print("Bank Clicked");
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Icon(
                items[index]["icon"],
                  color: Colors.green,
                  size: 40,
                ),
                SizedBox(height: 10),
                Text(
                  items[index]["title"],
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                  ))
                  ],
                
                ),
              ),
            );

    }
      // GridView.count(
      //   crossAxisCount: 5,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: [
      //     Container(
      //       color: Colors.red,
      //
      //     ),
      //     Container(
      //       color: Colors.blue,
      //
      //     ),
      //     Container(
      //       color: Colors.purple,
      //
      //     ),
      //     Container(
      //       color: Colors.lightGreen,
      //
      //     ),
      //     Container(
      //       color: Colors.grey,
      //
      //     ),
      //     Container(
      //       color: Colors.red,
      //
      //     ),
      //     Container(
      //       color: Colors.blue,
      //
      //     ),
      //     Container(
      //       color: Colors.purple,
      //
      //     ),
      //     Container(
      //       color: Colors.lightGreen,
      //
      //     ),
      //     Container(
      //       color: Colors.grey,
      //
      //     ),
      //     Container(
      //       color: Colors.red,
      //
      //     ),
      //     Container(
      //       color: Colors.blue,
      //
      //     ),
      //     Container(
      //       color: Colors.purple,
      //
      //     ),
      //     Container(
      //       color: Colors.lightGreen,
      //
      //     ),
      //     Container(
      //       color: Colors.grey,
      //
      //     ),
      //     Container(
      //       color: Colors.red,
      //
      //     ),
      //     Container(
      //       color: Colors.blue,
      //
      //     ),
      //     Container(
      //       color: Colors.purple,
      //
      //     ),
      //     Container(
      //       color: Colors.lightGreen,
      //
      //     ),
      //     Container(
      //       color: Colors.grey,
      //
      //     ),
      //     Container(
      //       color: Colors.red,
      //
      //     ),
      //     Container(
      //       color: Colors.blue,
      //
      //     ),
      //     Container(
      //       color: Colors.purple,
      //
      //     ),
      //     Container(
      //       color: Colors.lightGreen,
      //
      //     ),
      //     Container(
      //       color: Colors.grey,
      //
      //     ),
      //     Container(
      //       color: Colors.red,
      //
      //     ),
      //     Container(
      //       color: Colors.blue,
      //
      //     ),
      //     Container(
      //       color: Colors.purple,
      //
      //     ),
      //     Container(
      //       color: Colors.lightGreen,
      //
      //     ),
      //     Container(
      //       color: Colors.grey,
      //
      //     ),
      //
      //   ],
      // ),
    ),
    );
  }
}
