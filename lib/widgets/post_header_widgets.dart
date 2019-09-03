import 'package:flutter/material.dart';
import 'package:dojo_instagram/widgets/picture_widget.dart';

class PostHeaderWidget extends StatelessWidget {
  PostHeaderWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: <Widget>[
        PictureWidget(
          width: 40,
          height: 40,
        ),
        SizedBox(width: 10,),
        Text(title, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
      ],),
    );
  }
}
