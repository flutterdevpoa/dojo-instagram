import 'package:dojo_instagram/widgets/post_header_widgets.dart';
import 'package:flutter/material.dart';

class PostItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            PostHeaderWidget(
              title: "Hello",
            ),
            Spacer(),
            Icon(Icons.menu),
            SizedBox(width: 8,)
          ],
        ),
        Image.network(
            "https://previews.123rf.com/images/inegvin/inegvin1701/inegvin170100077/69882112-user-sign-icon-person-symbol-human-avatar-.jpg"),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.thumb_up),
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.message),
              ),
              onTap: () => Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text("CLICKED"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.send),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.flag),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("flatout_brasil_oficial skljadksajdklsadkl"),
              Text(
                "Ver 1 comentário",
                style: TextStyle(color: Colors.grey),
              ),
              Row(
                children: <Widget>[Text("36 minutos atrás"), Text(" - "), Text("Ver Tradução")],
              ),
            ],
          ),
        )
      ],
    );
  }
}
