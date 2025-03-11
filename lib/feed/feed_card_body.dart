import 'package:flutter/material.dart';

class FeedCardBody extends StatelessWidget {
  const FeedCardBody({
    super.key,
    required this.imagePath,
    required this.text,
  });

  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.lime[100],
      ),
      child: Row(
        children: [
          Image.asset(imagePath,
            fit: BoxFit.cover,
          ),
          Text(text,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,  // FIXME Does not seem to work
          ),
        ],
      ),
    );
  }
}
