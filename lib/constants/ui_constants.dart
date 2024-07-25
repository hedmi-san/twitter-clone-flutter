// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/constants.dart';
import 'package:twitter_clone/theme/theme.dart';
import '../features/Display Tweet/view/tweet_list.dart';
import '../features/Search/view/search.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
      centerTitle: true,
      title: SvgPicture.asset(
        AssetsConstants.twitterLogo,
        color: Pallete.blueColor,
        height: 35,
      ),
    );
  }

  static List<Widget> bottomTabBarPages = [
    const TweetList(),
    const SearchScreen(),
    const Text('Profile Screen'),
  ];
}
