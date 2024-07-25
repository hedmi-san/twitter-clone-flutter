import 'package:flutter/material.dart';
import 'package:twitter_clone/data/model.dart';
import 'package:twitter_clone/features/Display%20Tweet/widget/tweet_card.dart';

class TwitterReplyScreen extends StatelessWidget {
  static route(Tweet tweet) => MaterialPageRoute(
        builder: (context) => TwitterReplyScreen(
          tweet: tweet,
        ),
      );
  final Tweet tweet;
  const TwitterReplyScreen({super.key, required this.tweet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tweet'),
      ),
      body: Column(
        children: [
          TweetCard(
            tweet: tweet,
          ),
        ],
      ),
      bottomNavigationBar: TextField(
        decoration: InputDecoration(
          hintText: 'Tweet your reply',
        ),
      ),
    );
  }
}
