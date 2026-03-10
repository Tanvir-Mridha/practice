import 'package:flutter/material.dart';

import '../module_11/class_1.dart';
import '../module_11/class_1_grid.dart';
import '../module_11/class_3.dart';
import '../widget/city_card.dart';
class Module12Class2 extends StatelessWidget {
  const Module12Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text('TabBar'),
          bottom: TabBar(
            indicator: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(100)
            ),
            indicatorPadding: EdgeInsets.all(1),
            labelColor: Colors.red,
            unselectedLabelColor: Colors.red,
            unselectedLabelStyle: TextStyle(
              fontSize: 18,
              decoration : TextDecoration.underline,
              decorationColor: Colors.red
            ),
            tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'Favorite',
            ),
            Tab(
              icon: Icon(Icons.settings),
              text: 'Setting',
            ),
          ],),
        ),
        body: TabBarView(children: [
          // Container(color: Colors.red,),
          // Container(color: Colors.green,),
          // Container(color: Colors.orange,),
          // Module11Class1(),
          // Alert(),
          // Class1GridView(),
          Column(
              children: [
                CityCard(img:'https://media.istockphoto.com/id/1210768445/photo/skyscraper-in-dhaka-metropolitan-area.jpg?s=612x612&w=0&k=20&c=qGFV2qpVXkUNtm8KYT2avrSZwcBcoeM9wIp4LdADgrI=' ,CityName: 'Dhaka',Rating: '* 4.5',),
                CityCard(img:'https://media.istockphoto.com/id/1210768445/photo/skyscraper-in-dhaka-metropolitan-area.jpg?s=612x612&w=0&k=20&c=qGFV2qpVXkUNtm8KYT2avrSZwcBcoeM9wIp4LdADgrI=' ,CityName: 'Dhaka',Rating: '* 4.5',),
              ],
          ),
          Column(
            children: [
              CityCard(img:'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/e2/f8/43/longest-sea-beach-in.jpg?w=1200&h=-1&s=1' ,CityName: 'Cox Bazar',Rating: '*4.3',),
              CityCard(img:'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/e2/f8/43/longest-sea-beach-in.jpg?w=1200&h=-1&s=1' ,CityName: 'Cox Bazar',Rating: '*4.3',),


            ],
          ),
          Column(
            children: [
              CityCard(img:'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Faridpur_judge_court_%28%E0%A6%AB%E0%A6%B0%E0%A6%BF%E0%A6%A6%E0%A6%AA%E0%A7%81%E0%A6%B0_%E0%A6%9C%E0%A6%9C_%E0%A6%95%E0%A7%8B%E0%A6%B0%E0%A7%8D%E0%A6%9F%29.jpg/330px-Faridpur_judge_court_%28%E0%A6%AB%E0%A6%B0%E0%A6%BF%E0%A6%A6%E0%A6%AA%E0%A7%81%E0%A6%B0_%E0%A6%9C%E0%A6%9C_%E0%A6%95%E0%A7%8B%E0%A6%B0%E0%A7%8D%E0%A6%9F%29.jpg' ,CityName: 'Faridpur',Rating: '*4.3',),
              CityCard(img:'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Faridpur_judge_court_%28%E0%A6%AB%E0%A6%B0%E0%A6%BF%E0%A6%A6%E0%A6%AA%E0%A7%81%E0%A6%B0_%E0%A6%9C%E0%A6%9C_%E0%A6%95%E0%A7%8B%E0%A6%B0%E0%A7%8D%E0%A6%9F%29.jpg/330px-Faridpur_judge_court_%28%E0%A6%AB%E0%A6%B0%E0%A6%BF%E0%A6%A6%E0%A6%AA%E0%A7%81%E0%A6%B0_%E0%A6%9C%E0%A6%9C_%E0%A6%95%E0%A7%8B%E0%A6%B0%E0%A7%8D%E0%A6%9F%29.jpg' ,CityName: 'Faridpur',Rating: '*4.3',),
            ],
          )
        ]),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/v2/D5603AQGZ1kPvKIa4_g/profile-displayphoto-shrink_400_400/B56ZObybPHGcAg-/0/1733485509763?e=1774483200&v=beta&t=GknNUfTSRG3m2FyMu04ngXBKU6BRinSCIvRaaBYqZ88'),
                    radius: 42,
                  ),
                  Text('Tanvir Mridha',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold

                  ),),
                  Text('tanvirmridha17540042@gmail.com',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold

                  ),),

                ],
              )),
              ListTile(
                leading: Icon(Icons.home),
                title:Text('Dashboard') ,


              ),
              ListTile(
                leading: Icon(Icons.home),
                title:Text('Dashboard') ,


              ),
              ListTile(
                leading: Icon(Icons.home),
                title:Text('Dashboard') ,


              ),
              ListTile(
                leading: Icon(Icons.home),
                title:Text('Dashboard') ,


              ),
              ListTile(
                leading: Icon(Icons.home),
                title:Text('Dashboard') ,


              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/v2/D5603AQGZ1kPvKIa4_g/profile-displayphoto-shrink_400_400/B56ZObybPHGcAg-/0/1733485509763?e=1774483200&v=beta&t=GknNUfTSRG3m2FyMu04ngXBKU6BRinSCIvRaaBYqZ88'),
                    radius: 42,
                  ),
                  Text('Tanvir Mridha',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold

                  ),),
                  Text('tanvirmridha17540042@gmail.com',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold

                  ),),

                ],
              )),
              ListTile(
                leading: Icon(Icons.home),
                title:Text('Dashboard') ,


              ),
              ListTile(
                leading: Icon(Icons.home),
                title:Text('Dashboard') ,


              ),
              ListTile(
                leading: Icon(Icons.home),
                title:Text('Dashboard') ,


              ),
              ListTile(
                leading: Icon(Icons.home),
                title:Text('Dashboard') ,


              ),
              ListTile(
                leading: Icon(Icons.home),
                title:Text('Dashboard') ,


              ),
            ],
          ),
        ),
      ),
    );
  }
}
