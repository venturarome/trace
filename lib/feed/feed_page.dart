import 'package:flutter/material.dart';
import 'package:trace/data/data.dart';
import 'package:trace/feed/feed_card.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blueGrey[100],
      ),
      child: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return FeedCard(cardData: cards[index]);
        },
      ),
    );
  }
}