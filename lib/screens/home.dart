import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_resume_app/constants/appcolors.dart';
import 'package:my_resume_app/theme/theme_config.dart';
import 'package:my_resume_app/widgets/socialcontainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //weapon name and image
  List<Map> socialMedia = [
    {"name": "Github", "icon": "icons/git.png"},
    {"name": "Discord", "icon": "icons/discord.png"},
    {"name": "Dribbble", "icon": "icons/dribbble.png"},
    {"name": "Facebook", "icon": "icons/fb.png"},
    {"name": "Linkedin", "icon": "icons/in.png"},
    {"name": "Snapchat", "icon": "icons/snap.png"},
    {"name": "Telegram", "icon": "icons/tel.png"},
    {"name": "TikTok", "icon": "icons/tiktok.png"},
    {"name": "Whatsapp", "icon": "icons/whatsapp.png"},
    {"name": "Youtube", "icon": "icons/youtube.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(height: 18),

                //logo row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "G.E",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),

                    // change theme
                    InkWell(
                      onTap: () {
                        currentTheme.switchTheme();
                      },
                      child: const Icon(
                        Iconsax.moon,
                        size: 28,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                //picture
                Image.asset(
                  'images/ge.png',
                  scale: 2,
                ),

                const SizedBox(height: 30),

                const Text(
                  "Hi, I'm Godwin Ebri",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "@godwinnebri",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),

                const SizedBox(height: 16),

                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: AppColors.grey2.withOpacity(0.4)),
                    //color: AppColors.primaryColor.withOpacity(0.1),
                  ),
                  child: const Text(
                    "Mobile developer",
                    style: TextStyle(fontSize: 16, color: AppColors.grey1),
                  ),
                ),

                const SizedBox(height: 20),

                //bio
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.grey2.withOpacity(0.08),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      // const Text(
                      //   "About me",
                      //   style: TextStyle(
                      //       fontSize: 22,
                      //       fontWeight: FontWeight.bold,
                      //       color: AppColors.black),
                      // ),
                      //const SizedBox(height: 8),
                      SizedBox(
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(30),
                        //   color: AppColors.grey1.withOpacity(0.1),
                        // ),
                        child: Text(
                          "Enthusiastic mobile application developer eager to contribute to team success through hard work, attention to detail and excellent organizational skills. Motivated to learn, grow and excel in the creative industry.",
                          style: TextStyle(fontSize: 16, height: 1.8),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 28),

                //social links
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Social links",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),

                    //icons
                    SizedBox(
                      //width: 800,
                      height: 60,
                      child: ListView.separated(
                        padding: const EdgeInsets.all(0),
                        scrollDirection: Axis.horizontal,
                        // To add separation line between the ListView
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 16),

                        itemCount: socialMedia.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SocialContainer(
                            socialIcon: socialMedia[index]['icon'],
                            socialMedia: socialMedia[index]['name'],
                          );
                        },
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 28),

                //what i can do for the company
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "What I can do for the company",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 12),
                    SizedBox(
                      child: Text(
                        "I will bring my unique visioning ability to your company. I am experienced in many areas related to development.",
                        style: TextStyle(fontSize: 16, height: 1.8),
                      ),
                    ),
                    SizedBox(height: 28),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
