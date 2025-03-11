import 'package:flutter/material.dart';

class FeedCardButtonLike extends StatefulWidget {
  const FeedCardButtonLike({
    super.key,
    required this.textButtonStyle,
  });

  final TextStyle textButtonStyle;

  @override
  State<FeedCardButtonLike> createState() => _FeedCardButtonLikeState();
}

class _FeedCardButtonLikeState extends State<FeedCardButtonLike> {

  bool _liked = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text("Like",
        style: TextStyle(
          color: _liked ? Colors.blue : widget.textButtonStyle.color,
          fontSize: widget.textButtonStyle.fontSize,
          fontWeight: widget.textButtonStyle.fontWeight,
        ),
      ),
      onPressed: () {
        setState(() {
          _liked = !_liked;
        });
      },
    );
  }
}