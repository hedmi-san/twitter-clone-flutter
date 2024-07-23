import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../../data/model.dart';

class TweetCard extends StatelessWidget {
  const TweetCard({super.key, required this.tweet});
  final Tweet tweet;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              timeago.format(tweet.tweetTime, allowFromNow: true),
              style: const TextStyle(),
            ),
          ],
        )
      ],
    );
  }
}
