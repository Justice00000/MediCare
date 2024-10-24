import 'package:flutter/material.dart';
import 'package:media_care/core/colors.dart';

class CustomLineProgressBar extends StatelessWidget {
  final double progress;

  const CustomLineProgressBar({required this.progress, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 5,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Container(
          height: 5,
          width: MediaQuery.of(context).size.width * 0.95 * progress,
          decoration: BoxDecoration(
            color: MediCareColors.greenColor,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ],
    );
  }
}
