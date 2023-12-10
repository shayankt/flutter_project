import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: grid3(),
  ));
}

class grid3 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      // GridView.count(crossAxisCount: 4,
      // children:
      //  List.generate(20, (index) => Container(
      //    child: Column(
      //      children: [
      //        Expanded(child: Image.asset('assets/images/orange.png')),
      //        Text('icon')
      //      ],
      //    ),
      // ))
      // ),
    GridView.extent(maxCrossAxisExtent: 120,
    children: 
        List.generate(20, (index) => Container(
          child: Column(
            children: [
              Expanded(child: Image.asset('assets/images/orange.png')),Text('orange')
            ],
          ),
        ))
        
    )

    );
  }
}
