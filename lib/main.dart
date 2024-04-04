import 'package:flutter/material.dart';
import 'package:flutter_application_811/Home_layout.dart';
import 'package:flutter_application_811/login.dart';
import 'package:flutter_application_811/w_grid_view.dart';

void main() {
  runApp(const card_app());
}

class card_app extends StatelessWidget {
  const card_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}










// class Mycard_app1 extends StatelessWidget {
//   const Mycard_app1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         height: 140,
//         width: 140,
//         child: Column(
//           children: [
//             Container(
//               child: Row(
               
//                 children: [
//                   TextButton(
//                       onPressed: () {},
//                       child: Image.asset(
//                         "assets/images/122.jpg",
//                         width: 90,
//                         height: 90,
//                       )),
//                   TextButton(
//                       onPressed: () {},
//                       child: Image.asset(
//                         "assets/images/122.jpg",
//                         width: 90,
//                         height: 90,
//                       ))
//                 ],
//               ),
//             ),
//             Row(
//               children: [
//                 TextButton(
//                     onPressed: () {},
//                     child: Image.asset(
//                       "assets/images/122.jpg",
//                       width: 90,
//                       height: 90,
//                     )),
//                 TextButton(
//                     onPressed: () {},
//                     child: Image.asset(
//                       "assets/images/122.jpg",
//                       width: 90,
//                       height: 90,
//                     )),
//               ],
//             ),
//           Row(children: [TextButton(
//                     onPressed: () {},
//                     child: Image.asset(
//                       "assets/images/122.jpg",
//                       width: 90,
//                       height: 90,
//                     )),
//                     TextButton(
//                     onPressed: () {},
//                     child: Image.asset(
//                       "assets/images/122.jpg",
//                       width: 90,
//                       height: 90,
//                     )),],)],
//         ),
//       ),
//     );
//   }
// }




 



// class Mycard_app extends StatelessWidget {
//   Mycard_app({super.key});
//   String name = "Ali";
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         height: 200,
//         width: 300,
//         child: Card(
//           elevation: 1,
//           shadowColor: Colors.black,
//           color: Colors.blueAccent,
//           child: Row(
//             children: [
//               Container(
//                 padding: EdgeInsets.all(47),
//                 height: 200,
//                 width: 190,
//                 child: Column(
//                   children: [
//                     Text(
//                       "$name",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(fontSize: 40, color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 height: 200,
//                 width: 100,
//                 color: Colors.white,
//                 child: Icon(
//                   Icons.person,
//                   size: 60,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

