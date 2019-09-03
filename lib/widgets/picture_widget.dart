import 'package:flutter/material.dart';

class PictureWidget extends StatelessWidget {
  PictureWidget({Key key, this.width, this.height}) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(width * (2 / 3)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: width,
          height: height,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
              fit: BoxFit.fill,
              image: new NetworkImage(
                  "https://previews.123rf.com/images/inegvin/inegvin1701/inegvin170100077/69882112-user-sign-icon-person-symbol-human-avatar-.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}
