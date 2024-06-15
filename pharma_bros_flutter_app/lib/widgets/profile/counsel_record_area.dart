import 'package:flutter/material.dart';
import 'package:pharma_bros_flutter_app/constants/text_styles.dart';

class CounselButton extends StatelessWidget {
  final String buttonTitle;

  const CounselButton({super.key, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          // View my counsel records
        },
        child: Text(
          buttonTitle,
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ));
  }
}

class CounselRecordArea extends StatelessWidget {
  const CounselRecordArea({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '상담 기록',
            style: customTitleBoldTextStyle,
          ),
          Text(
            '지금까지 상담 기록을 모두 볼 수 있어요',
            style: customSubTitleTextStyle,
          ),
          Padding(padding: EdgeInsets.only(top: 16)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CounselButton(
                buttonTitle: '나의 상담',
              ),
              CounselButton(
                buttonTitle: '관심 상담',
              )
            ],
          )
        ],
      ),
    );
  }
}
