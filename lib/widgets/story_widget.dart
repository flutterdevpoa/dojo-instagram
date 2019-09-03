import 'package:flutter/material.dart';
import 'package:dojo_instagram/widgets/picture_widget.dart';

class StoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PictureWidget(
          width: 80,
          height: 80,
        ),
        SizedBox(
          height: 5,
        ),
        Text("Meu Story")
      ],
    );
  }
}
