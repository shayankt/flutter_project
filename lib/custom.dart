import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/home.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: custom(),
  ));
}
var images = [
  'assets/images/Apple.png','assets/images/banana.png','assets/images/grapes.png','assets/images/kiwi.png',
'assets/images/Mango.png','assets/images/orange.png'
];
var names=[' apple',' banana',' grapes',' kiwi',' Mango',' orange'];
var price=['\$3','\$2','\$40','\$45','\$38','\$238',
];


class custom extends StatelessWidget {


    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Badge(label: Text('2'),
          child:
          IconButton(
            onPressed: (){}, icon: Icon(Icons.shopping_cart,),)
          ,
        ),
      )
    ],
      title: Text('Product list',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      centerTitle: true,
    ),
    body: ListView.custom(
    // childrenDelegate: SliverChildListDelegate(
    // List.generate(10, (index) => Card(
    //   child: Center(
    //     child: Text('helo'),
    //   ),
    childrenDelegate: SliverChildBuilderDelegate(
    childCount: 6,
    (context, index) => Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Card(
      color: Colors.grey,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[ Padding(
              padding: const EdgeInsets.only(top: 8,bottom: 4),
              child: Image.asset(images[index]
              ,height: 80,width: 80,
        ),),Column(
                children: [
                    RichText(text: TextSpan(style: TextStyle(
                      color: Colors.black),
                      children: [
                        TextSpan(text:  'Name:'),
                        TextSpan(text: names[index],style: TextStyle(fontWeight: FontWeight.bold))
                      ])),
                  RichText(text: TextSpan(style: TextStyle(
                      color: Colors.black),
                      children: [
                        TextSpan(text: 'unit :'),
                        TextSpan(text: ' Kg',style: TextStyle(fontWeight: FontWeight.bold))
                      ])),RichText(text: TextSpan(style: TextStyle(
                      color: Colors.black),
                      children: [
                        TextSpan(text: 'price :'),
                        TextSpan(text: price[index],style: TextStyle(fontWeight: FontWeight.bold))
                      ])),



                ],
            ),MaterialButton(onPressed: (){},
                shape: StadiumBorder(),
                color: Colors.brown,
            minWidth: 120,height: 40,
            child: Text('add to cart',style: TextStyle(
                color: Colors.white
            ),),)

        ]


      ),

      ),
    )

    ),),
    );

    }

}
