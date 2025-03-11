import 'package:flutter/material.dart';
import 'package:trace/application/conversion.dart';

class FeedCardHeader extends StatelessWidget {
  const FeedCardHeader({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.name,
    required this.dateString,
  });

  final String backgroundColor;
  final String textColor;
  final String name;
  final String dateString;

  @override
  Widget build(BuildContext context) {

    String initials = Conversion.textToNInitials(name, 2);

    return Container(
      margin: EdgeInsets.all(5),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(int.parse('ff$backgroundColor', radix: 16)),
            child: Text(initials,
              style: TextStyle(
                color: Color(int.parse('ff$textColor', radix: 16)),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
          Expanded(child: SizedBox()),
          Text(dateString),
        ],
      ),
    );
  }
}

