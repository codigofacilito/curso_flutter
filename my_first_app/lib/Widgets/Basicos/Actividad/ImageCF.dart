import 'package:flutter/material.dart';

class ImageCF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Image(
      image: NetworkImage(
          "https://i.ibb.co/H42S7r9/coco-c34f9bd7a9957f97136b9c10df6b9f357d7d1f2113dd07648847cc26b3c5958a.png"),
      width: 300,
      height: 300,
      errorBuilder:
          (BuildContext context, Object error, StackTrace? stackTrace) {
        return Image.asset("assets/images/Cody.jpeg");
      },
    );
  }
}
