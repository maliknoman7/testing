import 'package:flutter/material.dart';
import 'package:flutter_application_1/appBar.dart';

class myGridView
 extends StatelessWidget {
  const myGridView
  ({super.key});

  @override
  Widget build(BuildContext context) {
        
    return Scaffold(
 appBar: AppBar(backgroundColor: Colors.amber,
        leading: Icon(Icons.shopping_bag,  color: Colors.greenAccent,),
        title: Text("Daraz APP",style: TextStyle(fontSize: 30),),
        
        
        
       actions: [
     TextButton(onPressed: (){}, child: Text("Open",style: TextStyle(color: Colors.white),),style:TextButton.styleFrom(backgroundColor: Colors.deepOrange)),]
    ),
      body: GridView.count(
padding: .all(10),
crossAxisCount: 3,
crossAxisSpacing: 50,
mainAxisSpacing: 50,
children: [
  Container(   height:100,width: 100, color:  Colors.amber,),
    Container(height:100,width: 100,          color: Colors.amber,),
      Container(height:100,width: 100, color: Colors.amber,),
        Container( height:100,width: 100, color: Colors.amber,),
          Container( height:100,width: 100, color: Colors.amber,)
  
],
  ),

  
  
    );
  }
}