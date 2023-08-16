import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 66, 46, 38),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Keeper',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      'assets/icons/ic_menu.png',
                      color: Colors.white,
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),
              Container(
                height: 0.2,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                'Let' "'" 's' ' work\ntogether!',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 90,
                child: Text(
                    'Let us help you become greater at what you do.Fill out the following form and we will get back to you in next 24 hours.',
                    maxLines: 4,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w200),
                    textAlign: TextAlign.left),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/icons/ic_fill_circle.png',
                color: Colors.green,
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                            child: Text(
                          '01',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                          textAlign: TextAlign.center,
                        ))),
                    const Text('What' "'" 's' ' your name?',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w200)),
                    TextField(
                      keyboardType: TextInputType.name,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade700)),
                        hintStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w200),
                        hintText: "Type your full name",
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                            child: Text(
                          '02',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                          textAlign: TextAlign.center,
                        ))),
                    const Text('What' "'" 's' ' your email address?',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w200)),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade700)),
                        hintStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w200),
                        hintText: "example@gmail.com",
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                            child: Text(
                          '03',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                          textAlign: TextAlign.center,
                        ))),
                    const Text('What' "'" 's' ' your phone number?',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w200)),
                    TextField(
                      keyboardType: TextInputType.number,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade700)),
                        hintStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w200),
                        hintText: "-11 222 3333345",
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                            child: Text(
                          '04',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                          textAlign: TextAlign.center,
                        ))),
                    const Text(
                        'What' "'" 's' ' your company/organization name?',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w200)),
                    TextField(
                      keyboardType: TextInputType.name,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade700)),
                        hintStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w200),
                        hintText: "Type your company/organization name",
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                            child: Text(
                          '05',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                          textAlign: TextAlign.center,
                        ))),
                    const Text('What' "'" 's' ' services are you looking for?',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w200)),
                    TextField(
                      keyboardType: TextInputType.name,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        suffix: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        suffixIconColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade700)),
                        hintStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w200),
                        hintText: "Choose from a list here ",
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                            child: Text(
                          '06',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                          textAlign: TextAlign.center,
                        ))),
                    const Text('what have you budgeted for this project?',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w200)),
                    TextField(
                      keyboardType: TextInputType.name,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        suffix: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        suffixIconColor: Colors.white,
                        enabled: true,
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade700)),
                        hintStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w200),
                        hintText: "Choose from a list here ",
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                            child: Text(
                          '07',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w200),
                          textAlign: TextAlign.center,
                        ))),
                    const Text('Tell us about your project',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w200)),
                    TextField(
                      keyboardType: TextInputType.text,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade700)),
                        hintStyle: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w200),
                        hintText: "Please type your project description ",
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              /*OutlinedButton(onPressed: null,
                  style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.white,width:0.2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)
                  )),
                  child: const Text('SEND MESSAGE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),)),*/

              SizedBox(
                width: 170,
                child: OutlinedButton(
                  onPressed: null,
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white, width: 0.2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0))),
                  child: Stack(
                    children: const <Widget>[
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'SEND MESSAGE',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          )),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      ' CALL US',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w200),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      '-11 2425 304567',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      '-11 2524 206897',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      ' Address',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w200),
                    ),
                    Text(
                        'J 202 Thakur Village Borivali West Mumbai,\nMaharashtra',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w300)),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/icons/ic_facebook.png',
                      color: Colors.white,
                      width: 20,
                      height: 20,
                    ),
                    Image.asset(
                      'assets/icons/ic_twitter.png',
                      color: Colors.white,
                      width: 20,
                      height: 20,
                    ),
                    Image.asset(
                      'assets/icons/ic_instagram.png',
                      color: Colors.white,
                      width: 20,
                      height: 20,
                    ),
                    Image.asset(
                      'assets/icons/ic_linkedin-logo.png',
                      color: Colors.white,
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                height: 0.5,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                '@ 2022 Keeper, All rights reserved',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w100),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Privacy Police',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w100),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Made by Slab! Design Studio',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
