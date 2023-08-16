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
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calculator(),
    );
  }
}

class Calculator extends StatelessWidget {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var mHeight = 11.0;
  String mResult = "";
  int flag = 0;

  Calculator({super.key});


  @override
  Widget build(BuildContext context) {
    print('HomePageState built!!');
    return Scaffold(
      appBar: AppBar(title: Text('Widgets'),),
      body: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(
          children: [
            Text('Calculator', style: TextStyle(fontSize: 34),),
            const SizedBox(
              height: 31,
            ),
            TextField(
              controller: no1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter No 1',
                  label: Text("Number 1"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11)
                  )
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: no2Controller,
              onChanged: (value){

              },
              onSubmitted: (value){

              },
              decoration: InputDecoration(
                  hintText: 'Enter No 2',
                  prefix: Text('\$'),
                  isDense: true,
                  prefixStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11)
                  )
              ),
            ),
            const SizedBox(
              height: 21,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  flag = 1;
                }, child: Text('+')),
                ElevatedButton(onPressed: (){
                  flag = 2;
                }, child: Text('-')),
                ElevatedButton(onPressed: (){
                  flag = 3;
                }, child: Text('*')),
                ElevatedButton(onPressed: (){
                  flag = 4;
                }, child: Text('/')),
              ],
            ),

            const SizedBox(
              height: 11,
            ),

            StatefulBuilder(
                builder: (context, changeState){
                  print('Stateful Builder built!!');
                  return Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: (){
                              if(no1Controller.text.toString()!="" && no2Controller.text.toString()!="") {
                                var no1 = int.parse(no1Controller.text.toString());
                                var no2 = int.parse(no2Controller.text.toString());

                                if (flag == 1) {
                                  //add
                                  mResult = (no1 + no2).toString();
                                } else if (flag == 2) {
                                  mResult = (no1 - no2).toString();
                                  /*if (no1 > no2) {
                                mResult = (no1 - no2).toString();
                              } else {
                                mResult = (no2 - no1).toString();
                              }*/
                                } else if (flag == 3) {
                                  mResult = (no1 * no2).toString();
                                } else if (flag == 4) {
                                  if (no2 != 0) {
                                    mResult = (no1 / no2).toString();
                                  } else {
                                    mResult = "Infinite Soln. Error";
                                  }
                                } else {
                                  mResult =
                                  "Please select an operator before performing any operation";
                                }
                              } else {
                                mResult = "Please fill all the required blanks!!";
                              }
                              changeState(() {

                              });

                            }, child: Text('Calculate')),
                      ),

                      Text('$mResult', style: TextStyle(fontSize: 21),)
                    ],
                  );
                })

          ],
        ),
      ),
    );
  }
}


