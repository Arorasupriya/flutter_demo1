import 'package:demo1/screens/wallpaper_detail.dart';
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
      title: 'WallpaperOne',
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
  List<String> imgList = [
    'assets/images/img_abtract1.jpeg',
    'assets/images/img_abstract2.jpeg',
    'assets/images/img_abstract3.jpeg',
    'assets/images/img_pug.jpeg',
    'assets/images/img_animal.jpeg',
    'assets/images/img_animal2.jpeg',
    'assets/images/img_animal3.jpeg',
    'assets/images/img_animal4.jpeg',
    'assets/images/img_natuer1.jpeg',
    'assets/images/img_nature2.jpeg',
    'assets/images/img_nature3.jpeg',
    'assets/images/img_shiva1.jpeg',
    'assets/images/img_shiva2.jpeg',
    'assets/images/img_shiva3.jpeg',
    'assets/images/img_shiva4.jpeg',
  ];
  List<dynamic> colorList = [
    const Color.fromARGB(255, 81, 179, 180),
    const Color.fromARGB(255, 241, 166, 171),
    Colors.purple,
    Colors.orange,
    Colors.blue,
    Colors.yellow,
    Colors.yellowAccent,
    Colors.cyanAccent,
    Colors.cyan,
    Colors.pinkAccent,
    Colors.pink.shade50,
    Colors.brown,
    Colors.blue,
    Colors.blueGrey,
    Colors.purple,
    Colors.greenAccent,
    Colors.green,
    Colors.yellow,
  ];
  List<Map<String, dynamic>> imgGridWallMap = [
    {'name': 'Abstract', 'imgPath': 'assets/images/img_abtract1.jpeg'},
    {'name': 'Animal', 'imgPath': 'assets/images/img_animal2.jpeg'},
    {'name': 'Nature', 'imgPath': 'assets/images/img_natuer1.jpeg'},
    {'name': 'Shiva', 'imgPath': 'assets/images/img_shiva1.jpeg'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 81, 179, 180),
                Color.fromARGB(255, 241, 166, 171),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              color: Colors.white.withAlpha(160),
            ),
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      keyboardType: TextInputType.name,
                      style: const TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: 'Find Wallpaper...',
                        hintStyle: const TextStyle(color: Colors.grey),
                        fillColor: const Color.fromARGB(111, 255, 255, 255),
                        filled: true,
                        suffixIcon: const Icon(Icons.search),
                        suffixIconColor: Colors.grey.withAlpha(150),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white.withAlpha(111)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white.withAlpha(111)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text('Best of the month',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 300,
                      width: 400,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: imgList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(21),
                                child: Image.asset(
                                  imgList[index],
                                  width: 200,
                                  height: 300,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('The color tone',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 100,
                      width: 500,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: imgList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: const EdgeInsets.all(11.0),
                                child: Container(
                                  height: 40,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12)),
                                    color: colorList[index],
                                  ),
                                ));
                          }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Categories',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 300,
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  childAspectRatio: 5 / 3,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20),
                          itemCount: imgGridWallMap.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            WallpaperDetails(getIndex: index)));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(25)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          imgGridWallMap[index]["imgPath"]),
                                      fit: BoxFit.fitWidth),
                                ),
                                child: Center(
                                    child: Text(
                                  imgGridWallMap[index]["name"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25,
                                      color: Colors.white),
                                )),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.wallpaper),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.arrow_downward),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
