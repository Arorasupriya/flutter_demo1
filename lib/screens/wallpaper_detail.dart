import 'package:demo1/screens/wallpaper_sub_details.dart';
import 'package:flutter/material.dart';

class WallpaperDetails extends StatefulWidget {
  var getIndex = 0;
  WallpaperDetails({super.key, required this.getIndex});

  @override
  State<WallpaperDetails> createState() => _WallpaperDetailsState();
}

class _WallpaperDetailsState extends State<WallpaperDetails> {
  List<List<String>> data = [
    [
      'assets/images/img_abtract1.jpeg',
      'assets/images/img_abstract2.jpeg',
      'assets/images/img_abstract3.jpeg',
    ],
    [
      'assets/images/img_pug.jpeg',
      'assets/images/img_animal.jpeg',
      'assets/images/img_animal2.jpeg',
      'assets/images/img_animal3.jpeg',
      'assets/images/img_animal4.jpeg',
    ],
    [
      'assets/images/img_natuer1.jpeg',
      'assets/images/img_nature2.jpeg',
      'assets/images/img_nature3.jpeg',
    ],
    [
      'assets/images/img_shiva1.jpeg',
      'assets/images/img_shiva2.jpeg',
      'assets/images/img_shiva3.jpeg',
      'assets/images/img_shiva4.jpeg',
    ]
  ];

  int? itemCount;
  @override
  Widget build(BuildContext context) {
    itemCount = data[widget.getIndex].length;

    print("Get Index on tap ${widget.getIndex}");
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          'Wallpaper Details',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        )),
        body: SizedBox(
            height: 700,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 9 / 16,
                  ),
                  itemCount: itemCount,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        String imgURL;
                        imgURL = data[widget.getIndex][index];
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    WallPaperSubDetails(imgURL: imgURL)));
                        print('WallpaperDetail data $imgURL');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25)),
                          image: DecorationImage(
                              image: AssetImage(data[widget.getIndex][index]),
                              fit: BoxFit.fill),
                        ),
                      ),
                    );
                  }),
            )));
  }
}
