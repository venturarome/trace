import 'package:flutter/material.dart';
import 'package:trace/application/conversion.dart';
import 'package:trace/feed/feed_card_body.dart';
import 'package:trace/feed/feed_card_buttons.dart';
import 'package:trace/feed/feed_card_header.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({
    super.key,
    required this.cardData,
  });

  final Map<String, String> cardData;

  @override
  Widget build(BuildContext context) {
    var textColor = Conversion.hashStringToHex(cardData["name"]!);
    var backgroundColor = Conversion.invertHexString(textColor);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      // width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          FeedCardHeader(
            backgroundColor: backgroundColor,
            textColor: textColor,
            name: cardData["name"]!,
            dateString: cardData["date"]!,
          ),
          Expanded(
            child: FeedCardBody(
              imagePath: cardData["image"]!,
              text: cardData["text"]!,
            )
          ),
          FeedCardButtons(),
        ],
      ),
    );
  }
}

