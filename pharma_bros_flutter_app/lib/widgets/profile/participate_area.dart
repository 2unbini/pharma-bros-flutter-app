import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharma_bros_flutter_app/constants/text_styles.dart';
import 'package:pharma_bros_flutter_app/widgets/profile/custom_icon_button.dart';

class ParticipateArea extends StatelessWidget {
  const ParticipateArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '나의 참여',
              style: customTitleBoldTextStyle,
            ),
            const Padding(padding: EdgeInsets.only(top: 16)),
            CustomIconButton(
              icon: SvgPicture.asset('assets/icons/svg_announce.svg'),
              text: '친한 이벤트 활동 내역',
            ),
          ],
        ));
  }
}
