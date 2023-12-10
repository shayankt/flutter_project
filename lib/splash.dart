import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: splash(),));
}

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body:
      Container(
        decoration: BoxDecoration(
          // image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(
          //    "https://images.unsplash.com/photo-1690993461887-3dd60b2de468?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4MHx8fGVufDB8fHx8fA%3D%3D"))
          // gradient: LinearGradient(colors: [
          //   Colors.black,
          //   Colors.white,
          //   Colors.yellow,
          //   Colors.red
          // ])
        ),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    height: 90, width: 90,
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsn9wXEymyTqt6vTZqWd7wke5Jfo_5S4VxTA&usqp=CAU')),
                    // AssetImage(
                    //     "assets/icons/icon.png")),
                // Icon(Icons.dark_mode,size: 100, color: Colors.white,),
                Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Text('flipkar lite'),
                ),


              ]),









          
          // style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold))

        ),
      ),
    );
  }
}

