import 'package:flutter/material.dart';
import 'package:my_resume_app/widgets/project_container.dart';

import '../constants/appcolors.dart';

class Portfoliopage extends StatelessWidget {
  Portfoliopage({Key? key}) : super(key: key);

  //weapon name and image
  List<Map> project = [
    {"name": "E-learning app", "image": "images/app1.png", "tech": "Flutter"},
    {
      "name": "Machine Learning Bear",
      "image": "images/app2.png",
      "tech": "Java"
    },
    {"name": "Hello world", "image": "images/app3.png", "tech": "Flutter"},
    {"name": "Facebook Clone", "image": "images/app4.png", "tech": "Kotlin"},
    {"name": "Linkedin Clone", "image": "images/app5.png", "tech": "Flutter"},
    {"name": "Snapchat Clone", "image": "images/app6.png", "tech": "Swift"},
    {"name": "Project 141", "image": "images/app7.png", "tech": "Flutter"},
    {"name": "Gaz 'n' Ghost", "image": "images/app8.png", "tech": "React"},
    {"name": "kjfgohsf.dart", "image": "images/app9.png", "tech": "Dart"},
    {"name": "Youtube Clone", "image": "images/app10.png", "tech": "Flutter"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Portfolio",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(height: 20),

                //Listview
                SizedBox(
                  //width: MediaQuery.of(context).size.width,
                  //height: MediaQuery.of(context).size.height,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),

                    padding: const EdgeInsets.all(0),
                    scrollDirection: Axis.vertical,
                    // To add separation line between the ListView
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 28),

                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return ProjectContainer(
                        image: project[index]['image'],
                        technology: project[index]['tech'],
                        title: project[index]['name'],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
