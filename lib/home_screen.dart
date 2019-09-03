import 'package:dojo_instagram/widgets/picture_widget.dart';
import 'package:dojo_instagram/widgets/post_item_widget.dart';
import 'package:dojo_instagram/widgets/story_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Spacer(),
            Icon(
              Icons.tv,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Icon(
              Icons.send,
              color: Colors.black,
            )
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SingleChildScrollView(
              child: Row(
                children: <Widget>[
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                ],
              ),
              scrollDirection: Axis.horizontal,
            ),
            PostItemWidget(),
            PostItemWidget(),
            PostItemWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black,), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.add, color: Colors.black), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.thumb_up, color: Colors.black), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.people, color: Colors.black), title: Text("")),
        ],
      ),
    );
  }
}
