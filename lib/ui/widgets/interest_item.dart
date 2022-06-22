import 'package:airplane/theme/theme.dart';
import 'package:flutter/material.dart';

class InterestItem extends StatelessWidget {

  final String title;

  const InterestItem({
    Key? key,
    required this.title,
    })
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('images/ic_check.png')),
            ),
          ),
          Text(
            title,
            style: blackTextStyle,
          )
        ],
      ),
    );
  }
}
