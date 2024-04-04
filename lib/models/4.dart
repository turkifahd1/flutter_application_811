import 'package:flutter/material.dart';

class d_4 extends StatelessWidget {
  const d_4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("قسم فحص الكمبوتر")),
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
             SizedBox(
              height: 22,
            ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: const Color.fromARGB(255, 146, 21, 223),
                    border: Border.all(
                        color: Color.fromARGB(255, 0, 0, 0), width: 1)),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "تسجيل البيانات",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
