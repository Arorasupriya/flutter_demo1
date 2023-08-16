import 'package:flutter/material.dart';

class WallPaperSubDetails extends StatefulWidget {
  String imgURL = "";

  WallPaperSubDetails({required this.imgURL});

  @override
  State<StatefulWidget> createState() => WallPaperSubDetailState();
}

class WallPaperSubDetailState extends State<WallPaperSubDetails> {
  @override
  Widget build(BuildContext context) {
    print('WSD${widget.imgURL}');
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Wallpaper Sub Details',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      )),
      body: Container(
        decoration: BoxDecoration(
          // borderRadius:
          // const BorderRadius.all(Radius.circular(25)),
          image: DecorationImage(
              image: AssetImage(widget.imgURL), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
