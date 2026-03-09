import 'package:flutter/material.dart';

class Module10Class1 extends StatelessWidget {
  const Module10Class1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController =TextEditingController();
    return Scaffold(
      body: SafeArea(
          child:Padding(padding: const EdgeInsets.all(20),
            child:Column(
            children: [
              SizedBox(height: 50,),
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                    helperText: 'Phone Number',
                    helperStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.green
                    ),
                  hintText: 'Enter Phone Number',
                  hintStyle: TextStyle(
                      fontSize: 10,
                      color: Colors.red
                  ),
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.red
                  ),
                    suffixIcon: Icon(
              Icons.check
          ),

                    prefixIcon: Icon(
                    Icons.call
                  )

                ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: passwordController,
                obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.green
                  ),
                  helperText: 'Password',
                  helperStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.green
                  ),
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(
                      fontSize: 10,
                      color: Colors.red
                  ),

                  suffixIcon: Icon(
                      Icons.remove_red_eye_outlined
                  ),

                  prefixIcon: Icon(
                      Icons.lock
                  )

              ),
            ),
              SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white
                    ),
                    onPressed: (){
                      if(phoneController.text.isEmpty){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Please Enter Phone number')));
                      }
                      else if(phoneController.text.length != 11){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Enter Valid Phone Number')));
                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(phoneController.text)));
                      }
                      print(phoneController.text);
                      print(passwordController.text);
                
                    },

                    child: Text('Submit')),
              ),
              SizedBox(height: 40,),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                    width: 5,
                    color: Colors.green
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.3),
                      offset: Offset(4,10)
                    ),
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.3),
                      offset: Offset(-10,-10)
                    )

                  ]
                ),
                height: 70,
                width: 200,
                child: Text('Container Text'),
              )


            ],
          ),
      ),
    )
    );
  }
}
