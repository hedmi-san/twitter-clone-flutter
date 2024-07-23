import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:twitter_clone/features/Display%20Tweet/widget/carousel_image.dart';
import 'package:twitter_clone/features/Display%20Tweet/widget/hashtag_text.dart';
import 'package:twitter_clone/theme/pallete.dart';
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
              '@${tweet.uid} ',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            Text(
              timeago.format(tweet.tweetTime, locale: 'en_short'),
              style: const TextStyle(color: Pallete.greyColor, fontSize: 14),
            ),
          ],
        ),
        HashtagText(
          text: tweet.text,
        ),
        if (tweet.imagelinks.isNotEmpty)
          CarouselImage(imageLinks: tweet.imagelinks)
      ],
    );
  }
}
