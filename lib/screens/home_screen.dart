import 'package:flutter/material.dart';
import 'package:twitter_home_screen/utilities/textonly.dart';
import '../utilities/oneimage.dart';
import '../utilities/threeimages.dart';
import '../utilities/twoimages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey, width: 0.4))),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.home_filled,
                size: 25,
              ),
              Icon(
                Icons.search_outlined,
                size: 25,
              ),
              Icon(
                Icons.people_outline,
                size: 25,
              ),
              Icon(
                Icons.notifications_outlined,
                size: 25,
              ),
              Icon(
                Icons.mail_outline,
                size: 25,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 45),
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowIndicator();
            return true;
          },
          child: ListView(
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.zero,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 17,
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
                    Image(
                      image: const AssetImage("assets/images/x-logo.png"),
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.07,
                    ),
                    const Icon(null),
                  ],
                ),
              ),
              const Divider(),
              TabBar(
                splashBorderRadius: BorderRadius.circular(50.0),
                controller: tabController,
                indicatorColor: Theme.of(context).primaryColor,
                indicatorWeight: 3.0,
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                labelStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                labelColor: Colors.black87,
                unselectedLabelColor: Colors.black54,
                unselectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.w500),
                tabs: const [
                  Text("For you"),
                  Text("Following"),
                  Text("Tech"),
                ],
              ),
              const Divider(),
              const TextTweet(
                tweetHandle: "Mide29th needs a UI/UX Role 😭😭",
                tweetContent: "When RCCG become Lord's Chosen 😂😂\n",
                tweetTime: "... · 23h",
              ),
              const OneImageTextText(
                tweetContent:
                    "Omo. Is it worth missing out on 1st class because of tech???",
                tweetTime: "@AdemoyeJohn · 5h",
                tweetHandle: "John ✨",
                tweetImage: "assets/images/laptop.jpg",
              ),
              const OneImageTextText(
                tweetHandle: "Faculdade Multivix",
                tweetContent:
                    "A transformacao do seu futuro esta aqui. Pega a visao! 🛡️\n \nVenha viver sua verdade no VEST MULTINIX 20241! Bolsas de ate 50% de desconto no curso todo.\n \nFaca como o Caua e o Cesar e vem ser de verdade, vem ser Multivix! 🏆\n \nInscreva-se-agora!",
                tweetTime: "@Multivix",
                tweetImage: "assets/images/blackwallpaper.jpg",
              ),
              const TextTweet(
                tweetHandle: "Jay Gupta",
                tweetTime: "@jayk_gupta · 1d ",
                tweetContent:
                    "Learning React , let's connect! 🤝\nComment below what are you learning?",
              ),
              const ThreeImagesTweetText(
                tweetHandle: "Nigeria Stories",
                tweetContent:
                    "Story of The Haunted Iva Valley in Enugu \n \nThis is a story about the 21 miners who were unfairly killed at Iva mine in Enugu and still hunt the place till today \n \nOpen and read \n \nRepost To Educate Someone",
                tweetTime: "@NigeriaStories · 1d",
                tweetImage1: "assets/images/Screenshot_20231106-150512.jpg",
                tweetImage2: "assets/images/Screenshot_20231107-171222.jpg",
                tweetImage3: "assets/images/Screenshot_20231106-133120.jpg",
              ),
              const TextTweet(
                  tweetHandle: "Name cannot be blank",
                  tweetTime: "@hackSultan · 15h",
                  tweetContent:
                      "Work hard day and night, make sacrifices, build your skills and the money will come \n \nBetter to have the skills and be looking for the opportunity,than have the opportunity but no skill to seize it \n \nThe more you work hard, the luckier you get."),
              const TextTweet(
                  tweetHandle: "BOY JYGGA 🖤",
                  tweetTime: "@just_j1gga · 1d",
                  tweetContent: "Street is so cold my nigga...\n"),
              const TextTweet(
                  tweetHandle: "Nitish Chintakindi",
                  tweetTime: "@NitishC312 · 11h",
                  tweetContent:
                      "How do you answer the famous question \"why should we hire you\""),
              const TwoImagesTweetText(
                tweetHandle: "Alabi",
                tweetContent: "Please who can help him?\n",
                tweetTime: "@the_lawrenz · 33m ",
                tweetImage1: "assets/images/core_team.png",
                tweetImage2: "assets/images/gdsc-oboarding.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
