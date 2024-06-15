import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharma_bros_flutter_app/widgets/profile/custom_icon_button.dart';

class AlertSettingArea extends StatelessWidget {
  const AlertSettingArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: CustomIconButton(
        icon: SvgPicture.asset('assets/icons/svg_alarm.svg'),
        text: '섭취 알림 설정하기',
      ),
    );
  }
}
