import 'package:flutter/material.dart';
import 'package:twitter_clone/features/Display%20Tweet/widget/tweet_card.dart';
import '../../../data/data.dart';

class TweetList extends StatefulWidget {
  const TweetList({super.key});

  @override
  State<TweetList> createState() => _TweetListState();
}

class _TweetListState extends State<TweetList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tweets.length,
      itemBuilder: (context, index) {
        final tweet = tweets[index];
        return TweetCard(
          tweet: tweet,
        );
      },
    );
  }
}
