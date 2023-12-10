import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: builder(),
  ));
}

class builder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      // GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
      // crossAxisSpacing: 10,mainAxisSpacing: 5
      // ),
      //     itemBuilder: (context, index)=>Container(
    // color: Colors.orange,
    // child: Center(
    // child: Text('user$index'),
    // ),
    // )
      GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 120,mainAxisExtent: 150,
      mainAxisSpacing: 10,crossAxisSpacing: 10),
          itemBuilder: (context, index)=>Container(
            color: Colors.black,
            child: Column(
              children: [
                Image.asset('assets/icons/icon.png'),Text('icon',style: TextStyle(color: Colors.white),)
              ],
            )
          ))



      // )
    );
  }
}
