import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:like_button/like_button.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:twitter_clone/constants/constants.dart';
import 'package:twitter_clone/features/Display%20Tweet/widget/carousel_image.dart';
import 'package:twitter_clone/features/Display%20Tweet/widget/hashtag_text.dart';
import 'package:twitter_clone/features/Display%20Tweet/widget/tweet_icon.dart';
import 'package:twitter_clone/theme/pallete.dart';
import '../../../data/model.dart';

class TweetCard extends StatelessWidget {
  const TweetCard({super.key, required this.tweet});
  final Tweet tweet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '@${tweet.uid} ',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
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
            CarouselImage(imageLinks: tweet.imagelinks),
          Container(
            margin: const EdgeInsets.only(top: 10, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TweetIconButton(
                  pathName: AssetsConstants.viewsIcon,
                  text: '0',
                  onTap: () {},
                ),
                TweetIconButton(
                  pathName: AssetsConstants.commentIcon,
                  text: '0',
                  onTap: () {},
                ),
                TweetIconButton(
                  pathName: AssetsConstants.retweetIcon,
                  text: '0',
                  onTap: () {},
                ),
                LikeButton(
                  size: 25,
                  likeBuilder: (isLiked) {
                    return isLiked
                        ? SvgPicture.asset(
                            AssetsConstants.likeFilledIcon,
                            color: Pallete.redColor,
                          )
                        : SvgPicture.asset(
                            AssetsConstants.likeOutlinedIcon,
                            color: Pallete.greyColor,
                          );
                  },
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share_outlined,
                      color: Pallete.greyColor,
                      size: 25,
                    ))
              ],
            ),
          ),
          const Divider(
            color: Pallete.greyColor,
          )
        ],
      ),
    );
  }
}
