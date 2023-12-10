import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: hello(),
  ));
}

class hello extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.white,),
      body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Hello there!',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ),Text('automatic identity verification which enable you to verify your identity'),
          Center(child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.network(
                'data:image/png;base64,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'),
          )),MaterialButton(onPressed: (){},height: 50,minWidth: 150,
            child: Text('login',style: TextStyle(fontWeight: FontWeight.bold),),shape: StadiumBorder(),color: Colors.blue,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(onPressed: (){},height: 50,minWidth: 150,
              child: Text('Registration',style: TextStyle(fontWeight: FontWeight.bold),),shape: StadiumBorder(),color: Colors.red,),
          )

        ],
      ),
    ),

    );
  }
}
