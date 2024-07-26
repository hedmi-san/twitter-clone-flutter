class Tweet {
  final String uid;
  final String iD;
  final String text;
  final List<String> imagelinks;
  final DateTime tweetTime;

  Tweet({
    required this.uid,
    required this.iD,
    required this.text,
    required this.imagelinks,
    required this.tweetTime,
  });

  factory Tweet.fromJson(Map<String, dynamic> json) {
    return Tweet(
      uid: json['uid'],
      iD: json['iD'],
      text: json['text'],
      imagelinks: json['imagelinks'],
      tweetTime: json['tweetTime'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'iD': iD,
      'text': text,
      'imagelinks': imagelinks,
      'tweetTime': tweetTime,
    };
  }
}

class UserModel {
  final String email;
  final String name;
  final List<String> followers;
  final List<String> following;
  final String profilePic;
  final String bannerPic;
  final String uid;
  final String bio;
  final bool isTwitterBlue;
  const UserModel({
    required this.email,
    required this.name,
    required this.followers,
    required this.following,
    required this.profilePic,
    required this.bannerPic,
    required this.uid,
    required this.bio,
    required this.isTwitterBlue,
  });
}
