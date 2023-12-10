import 'package:flutter/material.dart';
import 'package:flutter_project/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(
    home: signup(),
  ));
}

class signup extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios,color: Colors.black),backgroundColor: Colors.white,
        elevation: 0,
      ),body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text('Sign up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
              Text('Create an account, its free',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(decoration: InputDecoration(labelText: 'Email',prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(40))
                    )),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: TextField(decoration: InputDecoration(labelText: 'username',prefixIcon: Icon(Icons.person),
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(40))
                    // )),
                // ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(decoration: InputDecoration(labelText: 'password',prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(40))
                  ),)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(decoration: InputDecoration(labelText: 'confirm password',prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(40)
                  )
                ),),
              ),
              MaterialButton(onPressed: (){},height: 50,minWidth: 200,
                child: Text('signup'),shape: StadiumBorder(),color: Colors.red,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>loginpage()));
              }, child: RichText(text: TextSpan(style: TextStyle(fontSize: 15),
                children: [
                  TextSpan(text: 'already have an acccount?'),
                  TextSpan(text: '  login',style: TextStyle(fontWeight: FontWeight.bold))
                ]
              )))
            ],
          
    ),
        ),
      ),
    );
  }
}
