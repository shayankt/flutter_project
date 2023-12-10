import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/home.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
runApp(MaterialApp(
  home: statefull_login(),
));
}

class statefull_login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _statefull_loginState();
}

class _statefull_loginState extends State<statefull_login> {
  final validkey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login page'),
      ),body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key:validkey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('login',style: GoogleFonts.abel(fontWeight: FontWeight.bold,fontSize: 40),),
              Text('login with your credentials',style: GoogleFonts.abel(fontSize: 25,fontWeight: FontWeight.bold),),

                TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'username'),
                  validator:(email){
                  if(email!.isEmpty||!email.contains('@')||!email.contains('@gmail.com')){
                    return 'invalid email';
                  }
                  },),SizedBox(
                height: 15,
              ),


                TextFormField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'password'),
                  validator: (password){
                  if(password!.isEmpty||password.length<6){return 'password must not be empty or length must be greater than 6';
                  }
                  },),SizedBox(
                height: 15,
              ),
              MaterialButton(onPressed: (){
                final valid =validkey.currentState!.validate();
                if(valid==true){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('invalid username/password'),
                    backgroundColor: Colors.red,));
                }
              },child: Text('login'),shape: StadiumBorder(),color: Colors.green,),
              TextButton(onPressed: (){}, child: RichText(text: TextSpan(
                children: [
                  TextSpan(text: 'Doesnt have an account'),
                  TextSpan(text:' signup')
                ]
              ),))
            ],
          ),
        ),
      ),
    ),
    );
  }
}
