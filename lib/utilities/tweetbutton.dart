import 'package:flutter/material.dart';

class TweetButton extends StatelessWidget {
  const TweetButton({Key? key, this.figure, required this.icon})
      : super(key: key);
  final String? figure;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 17,
          color: Colors.black54,
        ),
        const SizedBox(width: 2),
        Text(figure!),
      ],
    );
  }
}
