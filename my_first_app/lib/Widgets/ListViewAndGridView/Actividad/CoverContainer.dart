import 'package:flutter/material.dart';
import 'package:my_first_app/Values/DimensApp.dart';

class CoverContainer extends StatelessWidget {
  String image;

  CoverContainer(this.image);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        print("onTap");
      },
      child: Container(
        width: coverWith,
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                this.image,
              )),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(4,5)
            )
          ],
        ),
      ),
    );
  }
}
