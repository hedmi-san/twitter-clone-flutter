import 'model.dart';

List<Tweet> tweets = [
  Tweet(
    uid: "user123",
    iD: "tweet001",
    text:
        "Just finished my morning run. What a beautiful day! #fitness #motivation",
    imagelinks: [
      "https://th.bing.com/th/id/R.b8569aad68b0724cfd3adf591683025c?rik=v2PowG9aamS45g&pid=ImgRaw&r=0"
    ],
    tweetTime: DateTime(2024, 7, 21, 8, 30),
  ),
  Tweet(
    uid: "user456",
    iD: "tweet002",
    text:
        "Excited to announce our new product launch! Check out the link in bio for more details. #innovation #tech",
    imagelinks: [
      "https://s.hdnux.com/photos/01/13/73/53/19905273/3/1200x0.jpg",
    ],
    tweetTime: DateTime(2024, 7, 21, 10, 15),
  ),
  Tweet(
    uid: "user789",
    iD: "tweet003",
    text:
        "Enjoying a quiet Sunday afternoon with a good book and a cup of coffee. What's everyone else up to?",
    imagelinks: [],
    tweetTime: DateTime(2024, 7, 21, 14, 45),
  ),
  Tweet(
    uid: "user234",
    iD: "tweet004",
    text:
        "Just watched an amazing sunset at the beach. Nature never fails to amaze me! #sunset #beachlife",
    imagelinks: [
      "https://th.bing.com/th/id/OIP.0M-WxHI7MMPUeQkVPVrrSgHaE6?rs=1&pid=ImgDetMain"
    ],
    tweetTime: DateTime(2024, 7, 21, 19, 30),
  ),
  Tweet(
    uid: "user567",
    iD: "tweet005",
    text:
        "Trying out a new recipe tonight. Wish me luck in the kitchen! #cooking #foodie",
    imagelinks: [
      "https://th.bing.com/th/id/OIP.5fRWV12xj-Pki0ynznjsRwAAAA?rs=1&pid=ImgDetMain"
    ],
    tweetTime: DateTime(2024, 7, 21, 18, 00),
  ),
  Tweet(
    uid: "user890",
    iD: "tweet006",
    text:
        "Big game tonight! Who else is watching? Let's go team! #sports #gamenight",
    imagelinks: [],
    tweetTime: DateTime(2024, 7, 21, 20, 00),
  ),
  Tweet(
    uid: "user111",
    iD: "tweet007",
    text:
        "Just adopted this adorable puppy! Meet Max, our new family member. #puppylove #adoption",
    imagelinks: [
      "https://th.bing.com/th/id/OIP.08koL6WINLABYfJRgfw8rwHaE8?rs=1&pid=ImgDetMain"
    ],
    tweetTime: DateTime(2024, 7, 21, 11, 20),
  ),
  Tweet(
    uid: "user222",
    iD: "tweet008",
    text:
        "Celebrating my birthday today! Thank you all for the wishes. Feeling blessed. #birthday #celebration",
    imagelinks: [
      "https://cdn-s-www.republicain-lorrain.fr/images/D5FF4B66-4C0A-46E4-A36C-AFCD6939D2C7/NW_raw/premier-anniversaire-de-la-contestation-en-algerie-si-elle-a-su-preserver-son-caractere-pacifique-elle-doit-se-reinventer-pour-obtenir-de-nouveaux-resultats-face-au-pouvoir-photo-ryad-kramdi-afp-1582309364.jpg"
    ],
    tweetTime: DateTime(2024, 7, 21, 13, 45),
  ),
  Tweet(
    uid: "user333",
    iD: "tweet009",
    text:
        "Just finished reading an amazing book. Highly recommend 'Artificial Intelligence' by Dr. David Brown. #bookrecommendation #AI",
    imagelinks: [
      "https://th.bing.com/th/id/R.c9d93e3faa89cbac5545792994a0f06f?rik=1L3ZFYHFnfC6HA&pid=ImgRaw&r=0"
    ],
    tweetTime: DateTime(2024, 7, 21, 16, 30),
  ),
  Tweet(
    uid: "user444",
    iD: "tweet010",
    text:
        "Incredible concert last night! The energy was unreal. #livemusic #concertnight",
    imagelinks: [],
    tweetTime: DateTime(2024, 7, 21, 9, 15),
  ),
  Tweet(
    uid: "user555",
    iD: "tweet011",
    text:
        "Just landed in Paris for a week-long vacation. Can't wait to explore! #travel #Paris",
    imagelinks: [
      "https://img-3.journaldesfemmes.fr/u4UYSKH_a6D2FObCbFty6UPf5Us=/3000x/smart/4215c659c7934058818a6372d55ead60/ccmcms-jdf/10084159.jpg",
      "https://th.bing.com/th/id/OIP.cdGxqyTMbhmietK_2pMhCAHaE0?w=2148&h=1396&rs=1&pid=ImgDetMain"
    ],
    tweetTime: DateTime(2024, 7, 21, 15, 00),
  ),
  Tweet(
    uid: "user666",
    iD: "tweet012",
    text:
        "Proud to announce I've completed my master's degree! Hard work pays off. #graduation #achievement",
    imagelinks: [
      "https://i.pinimg.com/originals/5d/e6/f3/5de6f3942dbb9b384d1c3990f71f2272.jpg"
    ],
    tweetTime: DateTime(2024, 7, 21, 17, 30),
  ),
];

UserModel user = const UserModel(
  email: 'adolfHitler45@gmail.com',
  name: 'Adolf Hitler',
  followers: [
    'joseph stalin',
    'george bush',
    'Winston Churchill',
    'Harry Truman',
    'Hideki Tojo'
  ],
  following: ['Leo Messi'],
  profilePic:
      'https://th.bing.com/th/id/R.50187a57be2fd5f57be4e9506431631f?rik=U3zmPdrUi8IMOw&pid=ImgRaw&r=0',
  bannerPic:
      'https://render.fineartamerica.com/images/rendered/default/poster/8.000/4.000/break/images/artworkimages/medium/1/nazi-flag-color-added-2016-david-lee-guss.jpg',
  uid: 'user069',
  bio: 'A dead jew is a good jew',
  isTwitterBlue: true,
);
