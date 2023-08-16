import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Set landscape orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return MaterialApp(
      title: 'Screen1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstScreen',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                  width: 370,
                ),
                Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      )),
                  child: const Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(
                      'Strawberry Pavlova',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      )),
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'Strawberry Pavlova is the perfect summer dessert.'
                          ' This light meringue cake is topped with Chantilly Cream, delicious Strawberry Sauce and fresh Strawberries.',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 350,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: 20,
                          height: 20,
                          child: const Icon(
                            Icons.star,
                            color: Colors.grey,
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                          width: 20,
                          height: 20,
                          child: const Icon(
                            Icons.star,
                            color: Colors.grey,
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                          width: 20,
                          height: 20,
                          child: const Icon(
                            Icons.star,
                            color: Colors.grey,
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                          width: 20,
                          height: 20,
                          child: const Icon(
                            Icons.star,
                            color: Colors.grey,
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                          width: 20,
                          height: 20,
                          child: const Icon(
                            Icons.star,
                            color: Colors.grey,
                          )),
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        width: 150,
                        height: 20,
                        // color: Colors.grey,
                        child: const Text(
                          '170 Reviews',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/icons/ic_presentation.png',width: 30,height: 30,color: Colors.green,),
                          Text('PREP:',style: TextStyle(fontSize: 15),),
                          Text('25 min',style: TextStyle(fontSize: 12),),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/icons/ic_clock.png',width: 30,height: 30,color: Colors.green,),
                          Text('COOK:',style: TextStyle(fontSize: 15),),
                          Text('1 hr',style: TextStyle(fontSize: 12),),

                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/icons/ic_fork.png',width: 30,height: 30,color: Colors.green,),
                          Text('FEEDS:',style: TextStyle(fontSize: 15),),
                          Text('4-6',style: TextStyle(fontSize: 12),),


                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
          Image.asset(
            'assets/images/img_strawberry_pavlova1.png',
            fit: BoxFit.fill,
            width: 390,
          )
        ],
      ),
    );
  }
}
