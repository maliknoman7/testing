import 'package:flutter/material.dart';

class myAppBar
 extends StatelessWidget {
   myAppBar
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.amber,
        leading: Icon(Icons.shopping_bag,  color: Colors.greenAccent,),
        title: Text("Daraz APP",style: TextStyle(fontSize: 30),),
        
        
        
       actions: [
     TextButton(onPressed: (){}, child: Text("Open",style: TextStyle(color: Colors.white),),style:TextButton.styleFrom(backgroundColor: Colors.deepOrange)),]
    
       
      );

  }
    Size get preferredSize => Size.fromHeight(kToolbarHeight);
}