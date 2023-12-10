import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';
void main(){
  runApp(MaterialApp(
    home: stateful_reg(),
  ));
}
class stateful_reg extends StatefulWidget {


  @override
  State<stateful_reg> createState() => _stateful_regState();
}

class _stateful_regState extends State<stateful_reg> {
  final validkey =GlobalKey<FormState>();
  bool pwdstate=true;
  bool psate=true;
  String? pwd;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('registration'),
      ),body: Center(child: Form(
      key: validkey,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Registration',style: TextStyle(fontSize: 40),),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8,bottom: 8,top: 30),
            child: TextField(decoration:
            InputDecoration(hintText: 'name',
                border: OutlineInputBorder()
            ),
            ),
          ),



        Padding(
          padding: const EdgeInsets.all(8),
          child: TextFormField(validator: (email){
            if(email!.isEmpty||!email.contains('@')||!email.contains('gmail.com')){
            return 'invalid username';}
          },
            decoration: InputDecoration(hintText: 'username',
                border:OutlineInputBorder()),),
        ),

          Padding(padding: const EdgeInsets.all(8.0),
            child: TextFormField(obscureText: pwdstate,obscuringCharacter: '*',
              validator: (password){
              pwd=password;
              if(password!.isEmpty||password.length<6){
                return 'password must have 6 characters';
              }
            },
              decoration: InputDecoration(suffixIcon: IconButton(onPressed: (){
                setState(() {
                  if(pwdstate == true){
                    pwdstate=false;
                  }else{
                    pwdstate=true;
                  }
                });
              }, icon: Icon(pwdstate == true
              ?Icons.visibility_off_sharp
              :Icons.visibility)),
                  hintText: 'password',
                border: OutlineInputBorder()),),
          ),

          Padding(padding: const EdgeInsets.all(8.0),
            child: TextFormField(obscuringCharacter: "*",
              obscureText:psate == true
              ,
              validator: (pass){
            if(pass!.isEmpty||pass != pwd){
              return 'password must be same';
            }
            },
              decoration: InputDecoration(suffixIcon: IconButton(onPressed: (){
                setState(() {if(psate== true){
                  psate = false;
                }else
                  psate =true;

                });
              }, icon: Icon(psate==true
              ?Icons.visibility_off_sharp
              :Icons.visibility)),
                  hintText: 'confirm password',
                border: OutlineInputBorder()),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(validator: (phn){
              if(phn!.isEmpty||phn.length<10){
                return 'invalid number';
              }
            },
              decoration: InputDecoration(hintText: 'phone number',
                border: OutlineInputBorder()),),
          ),
          MaterialButton(onPressed: (){
            final valid =validkey.currentState!.validate();
            if(valid==true){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
            }else{
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('invalid usrname/password')));
            }
          },shape: StadiumBorder(),color: Colors.green,child:Text('login'
          )),TextButton(onPressed: (){}, child: RichText(text: TextSpan(
            children: [
              TextSpan(text: 'already have an account'),
            TextSpan(text: '  login')
            ]
          )),
          )
        ],
    ),
      ),

    ),
    );
  }
}
