import 'package:flutter/material.dart';
import 'package:trace/feed/feed_card_button_like.dart';

class FeedCardButtons extends StatelessWidget {
  const FeedCardButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var textButtonStyle = TextStyle(
      color: Colors.grey,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FeedCardButtonLike(textButtonStyle: textButtonStyle),
        TextButton(
          child: Text("Wishlist", style: textButtonStyle),
          onPressed: () {},
        ),
        TextButton(
          child: Text("Share", style: textButtonStyle),
          onPressed: () {},
        ),
      ],
    );
  }
}
