

import 'package:flutter/material.dart';




class  archived extends StatelessWidget {
  const  archived({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: GridView.builder(
        itemCount: images2.length,
        padding: const EdgeInsets.only(top: 30),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 7,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
          //  onTap: (){},
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
                          images2[index],
                          width: 100,
                          height: 110,
                          fit: BoxFit.fill,
                        ),
                      ),
                      
                      Text(
                        text2[index],
                        
                      ),
                      
                      Container(
                       padding: EdgeInsets.only(left: 60),
                        child: Row(
                          children: [
                            Text(text3[index],
                              ),
                             Container(
                       padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Row(
                          children: [
                            
                            Icon(Icons.shopping_cart,size: 14,color: const Color.fromARGB(255, 170, 16, 5),),
                          ],
                        )
                        ),
                          ],
                        )
                        ),
                      
                     

                    ],
                  ),
                ),
                // Text(
                //   text[index],
                // )
              ],
            ),
          );
        },
      ),
    );
  }
}


List<String> images2 = [
  "assets/images/1700942563582.png",
  "assets/images/1700942563594.png",
  "assets/images/1700942563604.jpg",
  "assets/images/1700942563618.png",
  "assets/images/1700942563632.png",
  "assets/images/1700942563646.png",
  "assets/images/1700942563659.png",
];



List<String> text2 = [
  "مفتاح تحكم ",
  "مفتاح حديث",
  "كاشف ",
  "سماعات داخليه",
  "اكسسورات ",
  "مسكه جوال",
  "uspمدخل ",
];

List<String> text3 = [
  "4000  ",
  "8044 ",
  "6000 ",
  " 980",
  "3000 ",
  " 8787",
  "7000 ",
];

