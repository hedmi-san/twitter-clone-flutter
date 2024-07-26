import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twitter_clone/data/data.dart';
import 'package:twitter_clone/theme/pallete.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIScrolled) {
        return [
          SliverAppBar(
            expandedHeight: 150,
            floating: true,
            snap: true,
            flexibleSpace: Stack(
              children: [
                Positioned.fill(
                  child: user.bannerPic.isEmpty
                      ? Container(
                          color: Pallete.blueColor,
                        )
                      : Image.network(user.bannerPic),
                ),
                Positioned(
                  bottom: 0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(user.profilePic),
                    radius: 45,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  margin: const EdgeInsets.all(20),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                          color: Pallete.whiteColor,
                          width: 1.5,
                        ),
                      ),
                    ),
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Pallete.whiteColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Text(
                    user.name,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ];
      },
      body: Container(),
    );
  }
}
