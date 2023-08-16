import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ContactApp());
}

class ContactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ContactApp',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool? isCheck = false;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            const Text(
              'Level Up Your Brand',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'You can reach us anytime via ',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'hi@untitledui.com ',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.purple),
            ),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
                height: 20,
                child: Text(
                  'First name',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                )),
            const SizedBox(
              height: 5,
            ),
            TextField(
              keyboardType: TextInputType.name,
              style: const TextStyle(fontSize: 18),
              decoration: InputDecoration(
                hintText: 'First name',
                fillColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
                height: 20,
                child: Text(
                  'Last name',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                )),
            const SizedBox(
              height: 5,
            ),
            TextField(
              keyboardType: TextInputType.name,
              style: const TextStyle(fontSize: 18),
              decoration: InputDecoration(
                hintText: 'Last name',
                fillColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
                height: 20,
                child: Text(
                  'Email',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                )),
            const SizedBox(
              height: 5,
            ),
            TextField(
              keyboardType: TextInputType.name,
              style: const TextStyle(fontSize: 18),
              decoration: InputDecoration(
                hintText: 'you@company.com',
                fillColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
                height: 20,
                child: Text(
                  'Phone number',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                )),
            const SizedBox(
              height: 5,
            ),
            TextField(
              keyboardType: TextInputType.number,
              style: const TextStyle(fontSize: 18),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey,
                ),
                hintText: '+1(555) 000-0000',
                fillColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
                height: 20,
                child: Text(
                  'Message',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                )),
            const SizedBox(
              height: 5,
            ),
            TextField(
              keyboardType: TextInputType.text,
              style: const TextStyle(fontSize: 18),
              maxLines: 8,
              decoration: InputDecoration(
                fillColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            StatefulBuilder(builder: (context, setState) {
              return Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Expanded(
                        flex: 1,
                        child: Checkbox(
                            value: isCheck,
                            onChanged: (bool? value) {
                              setState(() {
                                isCheck = value;
                                print('checkPressed');
                              });
                            }),
                      ),
                      Expanded(
                          flex: 4,
                          child: RichText(
                              text: TextSpan(
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                  children: <TextSpan>[
                                const TextSpan(text: 'You agree to our friendly '),
                                TextSpan(
                                    text: 'privacy policy',
                                    style: const TextStyle(
                                        color: Colors.blue,
                                        decoration: TextDecoration.underline),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        print('Tap on link');
                                      }),
                              ]))),

                    ],
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                         width:double.infinity,
                    child: ElevatedButton(
                        onPressed: (){},
                        style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.purple),),
                        child: const Text('Send Message',style: TextStyle(color: Colors.white,fontSize: 14),)),
                  ),
                ],
              );

            }),
          ],
        ),
      )),
    ));
  }
}
