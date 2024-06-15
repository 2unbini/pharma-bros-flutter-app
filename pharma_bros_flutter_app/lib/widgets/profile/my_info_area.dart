import 'package:flutter/material.dart';
import 'package:pharma_bros_flutter_app/constants/colors.dart';
import 'package:pharma_bros_flutter_app/constants/text_styles.dart';

class MyInfoArea extends StatelessWidget {
  const MyInfoArea({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'nickname',
                style: customTitleBoldTextStyle,
              ),
              Text(
                'kwoneunbini@gmail.com',
                style: customSubTitleTextStyle,
              ),
            ],
          ),
          Icon(
            Icons.chevron_right,
            color: GREY,
          )
        ],
      ),
    );
  }
}
