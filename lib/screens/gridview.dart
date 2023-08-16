import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid View',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Wallpaper(),
    );
  }
}

class Wallpaper extends StatefulWidget {
  @override
  GridViewDemo createState() => GridViewDemo();
}

class GridViewDemo extends State<Wallpaper> {
  //
  var listData = [
    {"color": Colors.red, "name": "Red"},
    {"color": Colors.yellow, "name": "Yellow"},
    {"color": Colors.brown, "name": "Brown"},
    {"color": Colors.black, "name": "Black"},
    {"color": Colors.orange, "name": "Orange"},
    {"color": Colors.pink, "name": "Pink"},
    {"color": Colors.purple, "name": "Purple"},
    {"color": Colors.cyan, "name": "Cyan"},
    {"color": Colors.pinkAccent, "name": "PinkAccent"},
    {"color": Colors.cyanAccent, "name": "CyanAccent"},
    {"color": Colors.greenAccent, "name": "GreenAccent"},
    {"color": Colors.red, "name": "Red"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          'Wallpaper',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        )),
        body: Padding(
          padding: const EdgeInsets.all(11.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2 ,
              mainAxisSpacing: 11,
              crossAxisSpacing: 11,
              childAspectRatio: 2/2,
            ),
              itemCount: listData.length,
              itemBuilder: (context,index) {
              var crrIndex = listData[index];
                if(index == 0){
                  return    InkWell(
                    onTap: (){
                      print("tapped ${crrIndex["name"].toString()}");
                    },
                    child: Container(
                      color: crrIndex["color"] as Color,
                      child: Center(
                          child: Text(
                            crrIndex['name'].toString(),
                            style: const TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    ),
                  );
                }
                else{
                  return   Container(
                    color: crrIndex["color"] as Color,
                    child: Center(
                        child: Text(
                          crrIndex['name'].toString(),
                          style: const TextStyle(fontSize: 20, color: Colors.white),
                        )),
                  );
                }},
          ),
        ));
  }
}

/*
//GridView.extent() use divide according to space (width) 100 is width main property is maxCrossAxisExtent:200/100/150
Scaffold(
appBar: AppBar(
title: const Text('Wallpaper',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
),
body: GridView.extent(
mainAxisSpacing: 11,
crossAxisSpacing: 11,
childAspectRatio: 9/16,
maxCrossAxisExtent: 150,
children: listData.map((e) => Container(
margin: EdgeInsets.all(11),
color: e["color"] as Color,
child: Center(child: Text(e['name'].toString(),style: TextStyle(fontSize: 20,color: Colors.white),)),
)).toList())
);*/

//GridView.count() use for when i know the count of data like 2/3/4/in column for display
/*
Scaffold(
appBar: AppBar(
title: const Text(
'Wallpaper',
style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
)),
body: GridView.count(
mainAxisSpacing: 11,
crossAxisSpacing: 11,
childAspectRatio: 9 / 16,
crossAxisCount: 2,
children: listData
    .map((e) => Container(
margin: EdgeInsets.all(11),
color: e["color"] as Color,
child: Center(
child: Text(
e['name'].toString(),
style: TextStyle(fontSize: 20, color: Colors.white),
)),
))
    .toList()));*/

// Use InkWell Widget:-  using of this widget we can make non-clickable items to clickable
/*
GridView.count(
mainAxisSpacing: 11,
crossAxisSpacing: 11,
childAspectRatio: 9 / 16,
crossAxisCount: 2,
children: listData
    .map((e) => InkWell(
onTap: (){
print("tapped ${e["name"].toString()}");
},
child: Container(
margin: EdgeInsets.all(11),
color: e["color"] as Color,
child: Center(
child: Text(
e['name'].toString(),
style: const TextStyle(fontSize: 20, color: Colors.white),
)),
),
))
    .toList()));*/
