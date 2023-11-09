import 'package:flutter/material.dart';
import 'package:twitter_home_screen/utilities/tweetbutton.dart';

class TextTweet extends StatelessWidget {
  const TextTweet({
    Key? key,
    required this.tweetHandle,
    required this.tweetTime,
    required this.tweetContent,
  }) : super(key: key);
  final String tweetHandle;
  final String tweetTime;
  final String tweetContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Theme.of(context).primaryColor,
                child: const Icon(
                  Icons.person_rounded,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Row(
                    children: [
                      Text(
                        tweetHandle,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        tweetTime,
                        style: const TextStyle(
                            color: Colors.black54, fontSize: 13),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    tweetContent,
                    style: const TextStyle(color: Colors.black87),
                  ),
                  trailing: const Icon(Icons.more_vert_outlined, size: 17),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 65, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              TweetButton(
                icon: Icons.mode_comment_outlined,
                figure: "5",
              ),
              TweetButton(
                icon: Icons.repeat,
                figure: "1",
              ),
              TweetButton(
                icon: Icons.favorite_border_outlined,
                figure: "6",
              ),
              TweetButton(
                icon: Icons.bar_chart_outlined,
                figure: "405",
              ),
              TweetButton(
                icon: Icons.share_outlined,
                figure: "",
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
