import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BMIMesuer());
}

class BMIMesuer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculate BMI',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: CalculateBMIS(),
    );
  }
}

class CalculateBMIS extends StatelessWidget {
  var weightController = TextEditingController();
  var heightFeetController = TextEditingController();
  var heightInchController = TextEditingController();
  String result = "";

  String BMIStatus = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculate BMI',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter your weight ',
                  label: const Text('Enter weight'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)))),
          const SizedBox(
            height: 20,
          ),
          TextField(
              controller: heightFeetController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter your height in Feet',
                  label: const Text("Enter height in Feet"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)))),
          const SizedBox(
            height: 20,
          ),
          TextField(
              controller: heightInchController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter your height in Inch',
                  label: const Text('Enter height in Inch'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)))),
          const SizedBox(
            height: 20,
          ),
          StatefulBuilder(
            builder: (context, setState) {
              return Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        num wKG =
                            double.parse(weightController.text.toString());
                        num hIF =
                            double.parse(heightFeetController.text.toString());
                        num hII =
                            double.parse(heightInchController.text.toString());
                        var totalInch = (hIF * 12) + hII;
                        var cm = totalInch * 2.54;
                        var meter = cm / 100;
                        var actualHeight = pow(meter, 2);
                        var finalValue = (wKG / actualHeight);
                        result = (finalValue.toStringAsFixed(2)).toString();
                        if (double.parse(result) > 25) {
                          BMIStatus = 'OverWeight';
                        } else if (double.parse(result) < 18) {
                          BMIStatus = 'UnderWeight';
                        } else if (double.parse(result) >= 18 &&
                            double.parse(result) <= 25) {
                          BMIStatus = 'Healthy';
                        }
                        setState(() {});
                      },
                      child: const Text('BMI')),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    '$result $BMIStatus',
                    style: const TextStyle(color: Colors.blue, fontSize: 15),
                  )
                ],
              );
            },
          )
        ]),
      ),
    ));
  }
}
