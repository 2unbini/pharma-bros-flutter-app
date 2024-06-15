import 'package:flutter/material.dart';
import 'package:pharma_bros_flutter_app/constants/colors.dart';
import 'package:pharma_bros_flutter_app/constants/text_styles.dart';
import 'package:pharma_bros_flutter_app/widgets/profile/alert_setting_area.dart';
import 'package:pharma_bros_flutter_app/widgets/profile/counsel_record_area.dart';
import 'package:pharma_bros_flutter_app/widgets/profile/my_info_area.dart';
import 'package:pharma_bros_flutter_app/widgets/profile/participate_area.dart';
import 'package:pharma_bros_flutter_app/widgets/profile/preference_area.dart';

const columnDivider = Divider(height: 8, color: customDividerColor);

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '내 정보',
          style: customTitleTextStyle,
        ),
        centerTitle: false,
        shape: const Border(
            bottom: BorderSide(color: customDividerColor, width: 1)),
      ),
      body: ListView(
        children: const [
          MyInfoArea(),
          columnDivider,
          CounselRecordArea(),
          columnDivider,
          AlertSettingArea(),
          columnDivider,
          ParticipateArea(),
          columnDivider,
          PreferenceArea(),
        ],
      ),
    );
  }
}
