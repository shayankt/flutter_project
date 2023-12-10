import 'package:flutter/material.dart';
import 'package:flutter_project/login_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(
    home:home() ,
  ));
}
class home extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(leading: IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
    }, icon: Icon(Icons.arrow_back_ios),color: Colors.black,),
    ),
   body: ListView(
       children: [
         Container(height: 100,width: 100, decoration: BoxDecoration(color: Colors.orange ),
           child: ListTile(selectedTileColor: Colors.orange,
             leading:
           CircleAvatar(
             child: Icon(Icons.person),
             backgroundColor: Colors.green,
           ), title: Text("abi"),subtitle: Text('344778888'),trailing: Icon(Icons.phone),),
         ),

          Container(height: 100,width: 100,decoration: BoxDecoration(color: Colors.orange,
            borderRadius: BorderRadius.circular(20)
          ),


            child: ListTile(title: Text('akil'),subtitle: Text('2334344444'),trailing: Icon(Icons.phone),
              leading: CircleAvatar(child: Icon(Icons.person),backgroundColor: Colors.red,),

            ),
          ),ListTile(title: Text('jon'),subtitle: Row(children: [Icon(Icons.done_all,color: Colors.blue),Text('hi')],),trailing: Icon(Icons.phone),
           leading: CircleAvatar(backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'),),

         ),ListTile(title: Text('jim'),subtitle: Text('27667678'),trailing: Column(
           children: [Text('12:27 pm')],
         ),
           leading: CircleAvatar(child: Icon(Icons.person),backgroundColor: Colors.yellow,),

         ),ListTile(title: Text('das'),
           subtitle: Row(
      children: [Icon(Icons.done_all),Text('how are you'),

      ]
      ),
           trailing: Column(children: [
             Text('yesterday'),
             CircleAvatar(radius: 10,
               backgroundColor: Colors.lightGreenAccent,child: Text('2'),)
           ],),
           leading: CircleAvatar(
               backgroundImage:NetworkImage('https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg')),

         ),Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children :[
               FaIcon(FontAwesomeIcons.google),
               FaIcon(FontAwesomeIcons.twitter,color: Colors.blue,)

             ],
           ),

       ],
     ),
   );

  }
}

