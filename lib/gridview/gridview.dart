import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: gridview(),
  ));
}

class gridview extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      // GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      // children: List.generate(10, (index) => Card(
      // /  child: Image.asset('assets/icons/icon.png'),
      // ))
      //   ),
           GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150,
           mainAxisExtent: 100,mainAxisSpacing: 20,crossAxisSpacing: 20

           ),
           children: 
             List.generate(20, (index) => Container(
               child: Image.asset('assets/icons/icon.png'),
             )
    )
           ,)






    );
  }
}
