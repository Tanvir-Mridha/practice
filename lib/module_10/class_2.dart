import 'package:flutter/material.dart';
class Module10Class2 extends StatelessWidget {
  const Module10Class2({super.key});

  @override
  Widget build(BuildContext context) {
    final _fromkey = GlobalKey<FormState>();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController =TextEditingController();
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.purple,
        title: Text('Class 2',
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _fromkey,
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  print('Clicked');
                },
                child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Roundel_of_Bangladesh_%E2%80%93_Army_Aviation.svg/250px-Roundel_of_Bangladesh_%E2%80%93_Army_Aviation.svg.png',
                  width: 200,),
              ),
              Image.asset('asset/img.png',
              width: 100,),
              Text('Login Here....!',
              style: TextStyle(
                fontSize: 25,
                color: Colors.red,
              ),
              ),
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(

                  hintText:'Phone Number',
                  border: OutlineInputBorder()
                ),
                validator: (value){
                  if(value== null|| value.isEmpty){
                    return 'Please enter a valid phone number';
                  }
                  else if(value.length!=11){
                    return 'Please enter a valid phone number';
                  }
                  else{
                    return null;
                  }
                },
              ),
              SizedBox(height: 40,),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(

                  hintText:'Password',
                  border: OutlineInputBorder()
                ),
                validator: (value){
                  if(value== null|| value.isEmpty){
                    return 'Please enter password';
                  }
                  else if(value.length < 6){
                    return 'Password must be min 6 Char';
                  }
                  else{
                    return null;
                  }
                },
              ),
              ElevatedButton(
                  onPressed: (){
                  if(_fromkey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Login Succesfully')));
                  }
                  else{

                  }
                  }, child: Text('Submit'))
            ],
          
          ),
        ),
      ),
    );
  }
}
