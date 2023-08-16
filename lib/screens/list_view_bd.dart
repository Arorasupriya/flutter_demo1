import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> listMapData = [
    {'colors': Colors.amber, 'name': "Amber"},
    {'colors': Colors.purple, 'name': "Purple"},
    {'colors': Colors.blue, 'name': "Blue"},
    {'colors': Colors.black, 'name': "Black"},
    {'colors': Colors.greenAccent, 'name': "GreenAccent"},
    {'colors': Colors.cyan, 'name': "Cyan"},
    {'colors': Colors.yellow, 'name': "Yellow"},
    {'colors': Colors.orange, 'name': "Orange"},
    {'colors': Colors.greenAccent, 'name': "GreyAccent"},
    {'colors': Colors.pink, 'name': "Pink"},
    {'colors': Colors.red, 'name': "Red"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Demo'),
        ),
        body: ListView.builder(
          itemCount: listMapData.length,
          itemBuilder: (context, index) {
                  if(index.isEven){
                    return Container(
                      height: 100,
                      color: listMapData[index]["colors"],
                      child: Center(
                        child: Text(
                          listMapData[index]["name"],
                          style:
                          const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                      ),
                    );
                  }
                  else if(index.isOdd){
                    return Container(
                      height: 100,
                      color: listMapData[index]["colors"],
                      child: Center(
                        child: Icon(Icons.access_alarm_rounded,color: Colors.white,)
                      ),
                    );
                  }

          },
        ));
  }
}
