import 'package:flutter/material.dart';
import 'package:flutter_project/home.dart';
import 'package:flutter_project/signup.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(
    home: loginpage(),
  ));
}

class loginpage extends StatelessWidget {
  String username ='admin';
  String password='abc123';
final user_ctrl =TextEditingController();
final pass_ctrl =TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
        }, icon: Icon(Icons.arrow_back_ios),color: Colors.black,),

       elevation: 0),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('login',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Text('welcome back login with your credentials',style : TextStyle(fontSize:20 ,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(controller: user_ctrl,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'email',
                    hintText: 'email',
                    border: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(40)
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15.0,left: 15,right: 15
              ),
              child: TextField(controller: pass_ctrl,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  hintText: 'password',
                  labelText: 'password',
                    border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(40)
                    )),
              ),
            ),
            MaterialButton(onPressed: (){
              if(username==user_ctrl.text && password==pass_ctrl.text){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));

              }user_ctrl.text='';
              pass_ctrl.text='';
            },height: 50,minWidth: 150,
            color: Colors.blue,shape: const StadiumBorder(),child: const Text('login'),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
            }, child: RichText(text: TextSpan(style: TextStyle(color: Colors.black,fontSize: 15),
              children: [
                TextSpan(text: 'dont hane an account?'),
                TextSpan(text: 'signup',style: TextStyle(fontWeight: FontWeight.bold,))
              ]
            )),)
            
          ],
        ),
      ),
    );
  }

}
