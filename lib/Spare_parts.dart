import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Spare_parts extends StatelessWidget {
  const Spare_parts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Container(
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(04),
              //   color: Color.fromARGB(255, 222, 222, 222),

              // ),
              width: 340,
              height: 160,
              child: CarouselSlider.builder(
                itemCount: CarouselSliderimage.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  child: Image.asset(
                    CarouselSliderimage[itemIndex],
                    fit: BoxFit.fill,
                    width: 340,
                  ),
                ),
                options: CarouselOptions(
                  height: 160,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (index, reason) {},
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 270),
              child: Text(
                ":الاكثر طلب",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                 
                ),
              ),
            ),
            SizedBox(
              height: 190,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 180,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            border: Border.all(
                                color: Color.fromARGB(255, 100, 3, 110), width: 2)),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(17),
                              child: Image.asset(images[index],
                                  height: 100, width: 100, fit: BoxFit.fill),
                            ),
                            Text(text[index]),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Icon(
                                Icons.shopping_cart,
                                size: 14,
                              ),
                            ),
                            Text(
                              text3[index],
                              style: TextStyle(fontSize: 10,),
                              
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Icon(
                                Icons.favorite,
                                size: 14,
                                color: const Color.fromARGB(255, 166, 26, 16),
                              ),
                            ),
                          
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(left: 280),
              child: Text(
                ":الاكثر مبيعا",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 190,
              child: ListView.builder(
                
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 180,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            border: Border.all(
                                color:  Color.fromARGB(255, 100, 3, 110), width: 2)),
                              
                        child: 
                        Column(
                          children: [
                            
                            ClipRRect(
                              borderRadius: BorderRadius.circular(17),
                              child: Image.asset(images2[index],
                                  height: 100, width: 100, fit: BoxFit.fill),
                            ),
                            Text(text2[index]),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Icon(
                                Icons.shopping_cart,
                                size: 14,
                              ),
                            ),
                            Text(
                              text3[index],
                              style: TextStyle(fontSize: 10),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Icon(
                                Icons.favorite,
                                size: 14,
                                color: const Color.fromARGB(255, 166, 26, 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> images = [
  "assets/images/e.png",
  "assets/images/g.jpg",
  "assets/images/1700942563676.png",
  "assets/images/q.jpg",
  "assets/images/OIP (3).jpg",
  "assets/images/1700942563676.png",
  "assets/images/OIP (1).jpg",
];
List<String> images2 = [
  "assets/images/1700942563582.png",
  "assets/images/1700942563594.png",
  "assets/images/1700942563604.jpg",
  "assets/images/1700942563618.png",
  "assets/images/1700942563632.png",
  "assets/images/1700942563646.png",
  "assets/images/1700942563659.png",
];
List<String> CarouselSliderimage = [
  "assets/images/w1.jpg",
  "assets/images/w2.jpg",
  "assets/images/w3.jpg",
  "assets/images/w4.jpg",
];

List<String> text = [
  "قطع غيار داخليه",
  "جنط سبورت",
  "حديثusbمدخل  ",
  "gkjyfgy",
  "gkjyfgy",
  "Mp3",
  "بلاك",
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
  "200",
  "300",
  "700",
  "1000",
  "400",
  "800",
  "100",
];



// Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             color: Colors.orange,
            
//           ),
//           child: CarouselSlider.builder(
//             itemCount: 1,
//             itemBuilder:
//                 (BuildContext context, int itemIndex, int pageViewIndex) =>
//                     Container(
//               child: Image.asset("  assets/images/e.png"),
//             ),
//             options: CarouselOptions(
//               height: 200,
//               aspectRatio: 16 / 9,
//               viewportFraction: 0.8,
//               initialPage: 0,
//               enableInfiniteScroll: true,
//               reverse: false,
//               autoPlay: true,
//               autoPlayInterval: Duration(seconds: 3),
//               autoPlayAnimationDuration: Duration(milliseconds: 800),
//               autoPlayCurve: Curves.fastOutSlowIn,
//               enlargeCenterPage: true,
//               enlargeFactor: 0.3,
//               onPageChanged: (index, reason) {},
//               scrollDirection: Axis.horizontal,
//             ),
//           ),
//         ),

///////
///Column(
//       children: [CarouselSlider(
//   options: CarouselOptions(height: 100.0),
//   items: [1,2,3,4,5].map((i) {
//     return Builder(
//       builder: (BuildContext context) {
//         return Container(
//           width: MediaQuery.of(context).size.width,
//           margin: EdgeInsets.symmetric(horizontal: 5.0),
//           decoration: BoxDecoration(
//             color: Colors.amber
//           ),
//           child: Text('text $i', style: TextStyle(fontSize: 16.0),)
//         );
//       },
//     );
//   }).toList(),
// ),
//         // ListView.builder(
//         //     scrollDirection: Axis.horizontal,
//         //     itemCount: 7,
//         //     itemBuilder: (BuildContext context, int index) {
//         //       return Padding(
//         //         padding: const EdgeInsets.all(10.0),
//         //         child: Container(
//         //           height: 180,
//         //           width: 100,
//         //           child: Column(children: [
//         //             Container(
//         //               child: Column(
//         //                 children: [
//         //                   Image.asset(images[index],
//         //                       height: 100, width: 100, fit: BoxFit.fill),
//         //                   Text(text[index]),
//         //                 ],
//         //               ),
//         //               decoration: BoxDecoration(
//         //                   borderRadius: BorderRadius.circular(17),
//         //                   border: Border.all(
//         //                       color: Color.fromARGB(255, 0, 0, 0), width: 1)),
//         //             ),
//         //           ]),
//         //         ),
//         //       );
//         //     }),
//       ],
//     );
//   }
// }