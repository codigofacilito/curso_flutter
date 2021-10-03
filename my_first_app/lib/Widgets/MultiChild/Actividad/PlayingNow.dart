import 'package:flutter/material.dart';
import 'package:my_first_app/Model/Sound.dart';

import 'PlayerButton.dart';

class PlayingNow extends StatelessWidget {
  Sound sound;

  PlayingNow(this.sound);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/images/qqqqqq.png",
              width: 270,
              fit: BoxFit.fitWidth,
            ),
            Image.asset(
              sound.cover,
              width: 200,
              height: 200,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  sound.title,
                  style: TextStyle(
                    fontSize: 50,
                    letterSpacing: 10,
                    fontFamily: "Teko",
                    color: Colors.blueGrey,
                  ),
                ),
                Text(
                  sound.author,
                  style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 5,
                    color: Colors.blueGrey,
                    fontFamily: "Teko",
                  ),
                ),
              ],
            ),
            PlayingNowButton(
              Icons.favorite_border,
              () {},
              iconColor: Colors.blueGrey,
            )
          ],
        ),
        Text(
          sound.time,
          style: TextStyle(
            fontSize: 40,
            letterSpacing: 10,
            fontFamily: "Teko",
            color: Colors.blueGrey,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PlayingNowButton(
              Icons.repeat,
              () {},
              iconColor: Colors.pink[100],
            ),
            PlayingNowButton(
              Icons.skip_previous,
              () {},
              iconColor: Colors.pink[100],
            ),
            PlayingNowButton(
              Icons.play_arrow,
              () {},
              backGroundColor: Colors.pink[100],
            ),
            PlayingNowButton(
              Icons.skip_next,
              () {},
              iconColor: Colors.pink[100],
            ),
            PlayingNowButton(
              Icons.volume_up_rounded,
              () {},
              iconColor: Colors.pink[100],
            )
          ],
        )
      ],
    );
  }
}
