import 'package:flutter/material.dart';
import 'package:pharma_bros_flutter_app/constants/colors.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final String text;

  const CustomIconButton({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          // Button Pressed
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                icon,
                const Padding(padding: EdgeInsets.only(left: 12)),
                Text(
                  text,
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
            const Icon(
              Icons.chevron_right,
              color: GREY,
            )
          ],
        ));
  }
}
