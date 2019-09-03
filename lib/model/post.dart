import 'package:dojo_instagram/model/user.dart';

class Post {
  final User user;
  final String imageUrl;
  final DateTime timestamp;
  final String content;
  final List<String> comments;

  Post(this.user, this.imageUrl, this.timestamp, this.content, this.comments);
}
