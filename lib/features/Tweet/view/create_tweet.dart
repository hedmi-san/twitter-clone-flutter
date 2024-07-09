import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_clone/constants/assets_constants.dart';
import 'package:twitter_clone/core/utils.dart';
import 'package:twitter_clone/theme/pallete.dart';

class CreateTweetScreen extends StatefulWidget {
  const CreateTweetScreen({super.key});

  @override
  State<CreateTweetScreen> createState() => _CreateTweetScreenState();
}

class _CreateTweetScreenState extends State<CreateTweetScreen> {
  final tweetTextController = TextEditingController();
  List<File> images = [];
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tweetTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Pallete.blueColor,
            ),
            child: const Text(
              'Tweet',
              style: TextStyle(
                color: Pallete.whiteColor,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.al-ain.com/images/2021/2/15/133-012026-lion-statue-algeria-argument_700x400.jpg'),
                      radius: 30,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        controller: tweetTextController,
                        style: const TextStyle(fontSize: 22),
                        decoration: const InputDecoration(
                          hintText: "What's happenning",
                          hintStyle: TextStyle(
                            color: Pallete.greyColor,
                            fontWeight: FontWeight.w600,
                          ),
                          border: InputBorder.none,
                        ),
                        maxLines: null,
                      ),
                    )
                  ],
                ),
                if (images.isNotEmpty)
                  CarouselSlider(
                    items: images.map((file) {
                      return Container(
                          width: MediaQuery.sizeOf(context).width,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: Image.file(file));
                    }).toList(),
                    options: CarouselOptions(
                      height: 400,
                      enableInfiniteScroll: false,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Pallete.greyColor,
              width: 0.3,
            ),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0).copyWith(
                left: 15,
                right: 15,
                bottom: 20,
              ),
              child: GestureDetector(
                onTap: () async {
                  final pickedImages = await pickImages();
                  setState(() {
                    images.addAll(pickedImages);
                  });
                },
                child: SvgPicture.asset(
                  AssetsConstants.galleryIcon,
                  height: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0).copyWith(
                left: 15,
                right: 15,
                bottom: 20,
              ),
              child: SvgPicture.asset(
                AssetsConstants.gifIcon,
                height: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0).copyWith(
                left: 15,
                right: 15,
                bottom: 20,
              ),
              child: SvgPicture.asset(
                AssetsConstants.emojiIcon,
                height: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
