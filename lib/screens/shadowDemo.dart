import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'first_app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.cyan.shade200,
    appBar: AppBar(
      title: const Text('Dashboard',style:TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold),),
      centerTitle: true,
    ),
     body: Center(
       child: Container(
            width: 200,
            height: 200,
            child:  Center(child: Text('Hello Dev!!', style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))),
            decoration: BoxDecoration(
              color: Colors.blue,
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                    offset: Offset(-5.5,-5.5 ),
                    blurRadius: 10
                )
              ],

            ),

       ),
     ),
   );
  }
  
}