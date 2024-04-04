import 'package:flutter/material.dart';

class g_7 extends StatelessWidget {
  const g_7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("غسيل السيارات")),
      ),
       body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "موديل السياره",
                icon: Icon(Icons.car_crash),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)
                )
              ),
            ),
            SizedBox(height: 22,),
            TextField(
              decoration: InputDecoration(
                labelText: "الموقع",
                icon: Icon(Icons.location_city_sharp),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)
                ),
              enabledBorder:OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green,width: 3)
              ) ),
            ),
              SizedBox(height: 22,),
                TextField(
              decoration: InputDecoration(
                labelText: 'وصف المشكله',
                icon: Icon(Icons.car_crash),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)
                ),
              enabledBorder:OutlineInputBorder(
                // borderSide: BorderSide(color: Colors.green,width: 3)
              ) ),
            ),
          ],
        ),
      ),
    );
  }
}
