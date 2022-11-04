import 'package:flutter/material.dart';
import 'package:my_resume_app/constants/appcolors.dart';
import 'package:my_resume_app/screens/home.dart';
import 'package:my_resume_app/screens/portfolio.dart';
import 'package:my_resume_app/screens/resume.dart';
import 'package:iconsax/iconsax.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List Pages = [
    const HomePage(),
    Portfoliopage(),
    const ResumePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: Pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Colors.white,
        currentIndex: currentIndex,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.grey1,
        showUnselectedLabels: true,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            label: ('Home'),
            icon: Padding(
              padding: EdgeInsets.only(bottom: 8.0, top: 15),
              child: Icon(Iconsax.home),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Portfolio',
            icon: Padding(
              padding: EdgeInsets.only(bottom: 8.0, top: 15),
              child: Icon(Iconsax.briefcase),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Resume',
            icon: Padding(
              padding: EdgeInsets.only(bottom: 8.0, top: 15),
              child: Icon(Iconsax.document),
            ),
          ),
        ],
      ),
    );
  }
}
