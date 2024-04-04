import 'package:flutter/material.dart';


// import 'package:flutter_application_7/mekanic.dart';
import 'package:flutter_application_811/models/1.dart';
import 'package:flutter_application_811/models/10.dart';
import 'package:flutter_application_811/models/2.dart';
import 'package:flutter_application_811/models/3.dart';
import 'package:flutter_application_811/models/4.dart';
import 'package:flutter_application_811/models/5.dart';
import 'package:flutter_application_811/models/7.dart';
import 'package:flutter_application_811/models/8.dart';
import 'package:flutter_application_811/models/9.dart';

class home_gridview_task extends StatelessWidget {
  const home_gridview_task({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: images.length,
        padding: const EdgeInsets.only(top: 30),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => pages[index]));
            },
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                      border: Border.all(
                          color: Color.fromARGB(255, 0, 0, 0), width: 1)),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(17),
                        child: Image.asset(
                            images[index],
                            width: 100,
                            height: 110,
                            fit: BoxFit.fill,
                          ),
                      ),
                     
                      Text(
                        text[index],
                      ),
                      
                    ],
                  ),
                ),
               
              ],
            ),
          );
        },
      ),
    );
  }
}

List<String> images = [
  "assets/images/قفل.jpg",
  "assets/images/كفرات.jpg",
  "assets/images/سطحه.jpg",
  "assets/images/فحص.jpg",
  "assets/images/غسيل.jpg",
  "assets/images/فحص كهرياء.jpg",
  "assets/images/غسيل.jpg",
  "assets/images/8.jpg",
  "assets/images/ميكنيكي.png",
  "assets/images/سطحه.jpg",
  
];

List<String> text = [
  "تصليح قفل السايرات",
  "تغيير الكفرات",
  "سطحه لنقل السيارات",
  "فحص كمبيوتر",
  "تغيير زيت السيارة",
  "فحص كهراباء",
  "غسيل السيارات",
  "توصيل بترول",
  "ميكانيكي",
  "سطحة",
  
  
];

List<Widget> pages = [
  a_1(),
  b_2(),
  c_3(),
  d_4(),
  e_5(),
  g_7(),
  h_8(),
  i_9(),
  m_10()
];
