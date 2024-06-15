import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pharma_bros_flutter_app/constants/colors.dart';

class FooterButton extends StatelessWidget {
  final String text;

  const FooterButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(color: customFooterColor),
        ));
  }
}

class VersionInfo extends StatelessWidget {
  const VersionInfo({super.key});

  Future<PackageInfo> _getPackageInfo() {
    return PackageInfo.fromPlatform();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _getPackageInfo(),
        builder: (BuildContext context, AsyncSnapshot<PackageInfo> snapshot) {
          if (snapshot.hasError || !snapshot.hasData) {
            return const Text(
              '버전 정보를 가져올 수 없습니다.',
              style: TextStyle(color: customFooterColor),
            );
          } else {
            return Text(
              '버전정보 v${snapshot.data!.version}',
              style: const TextStyle(color: customFooterColor),
            );
          }
        });
  }
}

class FooterArea extends StatelessWidget {
  const FooterArea({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FooterButton(text: '이용약관'),
              Text('•'),
              FooterButton(text: '개인정보처리방침'),
            ],
          ),
          VersionInfo(),
        ],
      ),
    );
  }
}
