import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: view(),
  ));
}

class view extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('separated')
        ),body: ListView.separated(itemBuilder: (context,index){
          return const ListTile(
            leading: Icon(Icons.person),
          title: Text('my contacts'),
          );
    },
        separatorBuilder: (context,index){
          if(index % 3==0){
            return const Divider(
            thickness: 5,color: Colors.red,
            );
    }else{
            return SizedBox();
    }
    }, itemCount: 10),
    );}}