import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../constants/appcolors.dart';

class ProjectContainer extends StatelessWidget {
  String title;
  String technology;
  String image;
  ProjectContainer(
      {Key? key,
      required this.image,
      required this.technology,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              //project image
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              const SizedBox(width: 18),

              //project name
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      //width: MediaQuery.of(context).size.width * 0.3,
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.grey1.withOpacity(0.1),
                      ),
                      height: 50,
                      width: 120,
                      child: Center(
                        child: Text(
                          technology,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Icon(
          Iconsax.arrow_right_3,
          color: AppColors.grey2,
        )
      ],
    );
  }
}
