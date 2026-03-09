import 'package:flutter/material.dart';

import '../widget/city_card.dart';
class Module11Class2 extends StatelessWidget {
  const Module11Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),

      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.red,
                    height: 300,
                    width: 300,
                  ),
                  Positioned(
                    left: 45,
                    top: 45,
                    child: Container(
                      color: Colors.blue,
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Positioned(
                    left: 90,
                    top: 90,
                    child: Container(
                      color: Colors.green,
                      height: 100,
                      width: 100,
                    ),
                  )
                ],
              ),
              SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CityCard(img:'https://media.istockphoto.com/id/1210768445/photo/skyscraper-in-dhaka-metropolitan-area.jpg?s=612x612&w=0&k=20&c=qGFV2qpVXkUNtm8KYT2avrSZwcBcoeM9wIp4LdADgrI=' ,CityName: 'Dhaka',Rating: '* 4.5',),
                    CityCard(img:'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/e2/f8/43/longest-sea-beach-in.jpg?w=1200&h=-1&s=1' ,CityName: 'Cox Bazar',Rating: '*4.3',),
                    CityCard(img:'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Faridpur_judge_court_%28%E0%A6%AB%E0%A6%B0%E0%A6%BF%E0%A6%A6%E0%A6%AA%E0%A7%81%E0%A6%B0_%E0%A6%9C%E0%A6%9C_%E0%A6%95%E0%A7%8B%E0%A6%B0%E0%A7%8D%E0%A6%9F%29.jpg/330px-Faridpur_judge_court_%28%E0%A6%AB%E0%A6%B0%E0%A6%BF%E0%A6%A6%E0%A6%AA%E0%A7%81%E0%A6%B0_%E0%A6%9C%E0%A6%9C_%E0%A6%95%E0%A7%8B%E0%A6%B0%E0%A7%8D%E0%A6%9F%29.jpg' ,CityName: 'Faridpur',Rating: '*4.3',),
                  ],

                ),
              ),



              Stack(
                children: [
                  Image.network('https://media.istockphoto.com/id/641448082/photo/beautiful-tropical-beach-front-hotel-resort-with-swimming-pool-sunshine.jpg?s=612x612&w=0&k=20&c=9PyitcP743oS7oGAoSW8iGDjf1goapy40Ol7PcCNv24='),
                  Container(
                    height: 280,
                    color: Colors.black.withOpacity(0.4),
                  ),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                          child: Text('Best Deal',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),),
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,size: 40,)),

                    ],

                  ),
                  Positioned(
                    top: 230,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                        ),
                          onPressed: (){}, child:
                      Text('Book Now',
                        style: TextStyle(
                            fontSize: 20

                        ),
                       )
                      )
                  )
                ],
              ),
              SizedBox(height: 15,),
              Stack(
                children: [
                  Image.network('https://media.istockphoto.com/id/641448082/photo/beautiful-tropical-beach-front-hotel-resort-with-swimming-pool-sunshine.jpg?s=612x612&w=0&k=20&c=9PyitcP743oS7oGAoSW8iGDjf1goapy40Ol7PcCNv24='),
                  Positioned(
                    top: 220,
                      left: 20,
                      right: 20,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: (){}, child: Text('Book Now',style: TextStyle(
                        fontSize: 20
                      ),)))
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}


