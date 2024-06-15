import 'package:flutter/material.dart';
import 'package:pharma_bros_flutter_app/constants/text_styles.dart';

class PreferenceArea extends StatelessWidget {
  const PreferenceArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
            onPressed: () {},
            child: const SizedBox(
              width: double.infinity,
              child: Text(
                '공지사항',
                style: customTitleTextStyle,
              ),
            )),
        TextButton(
            onPressed: () {},
            child: const SizedBox(
              width: double.infinity,
              child: Text(
                '문의/제보하기',
                style: customTitleTextStyle,
              ),
            )),
        TextButton(
            onPressed: () {},
            child: const SizedBox(
              width: double.infinity,
              child: Text(
                '친한약사 앱 칭찬하기',
                style: customTitleTextStyle,
              ),
            )),
      ],
    );
  }
}
