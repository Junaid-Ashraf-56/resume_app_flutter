import 'package:flutter/material.dart';

import '../constants/appcolors.dart';

class SocialContainer extends StatefulWidget {
  String socialMedia;
  String socialIcon;

  SocialContainer(
      {Key? key, required this.socialIcon, required this.socialMedia})
      : super(key: key);

  @override
  State<SocialContainer> createState() => _SocialContainerState();
}

class _SocialContainerState extends State<SocialContainer> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        padding: const EdgeInsets.only(left: 12, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isSelected
              ? AppColors.primaryColor.withOpacity(0.1)
              : AppColors.grey1.withOpacity(0.1),
        ),
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(widget.socialIcon),
            const SizedBox(width: 10),
            Text(
              widget.socialMedia,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
