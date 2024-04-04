import 'dart:convert';
// import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_application_811/Home_layout.dart';
import 'package:http/http.dart' as http;


class shoping extends StatefulWidget {
  @override
  State<shoping> createState() => _shopingState();
}

class _shopingState extends State<shoping> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();



  

  List list = [];
// ----------------ReadData---------------
  Future ReadData() async {
    var url = "http://3.3.134.48/project/fun/readData.php";
    var res = await http.get(Uri.parse(url));

    if (res.statusCode == 200) {
      var red = jsonDecode(res.body);

      setState(() {
        list.addAll(red);
      });
      print(list);
    }
  }

// ----------------AddData---------------
  Future AddData() async {
    var url = "http://3.3.134.48/project/fun/addData.php";
    var res = await http
        .post(Uri.parse(url), body: {'name': name.text, 'email': email.text});
    if (res.statusCode == 200) {
      var red = jsonDecode(res.body);

      print(red);
    }
  }

  // --------------EditData--------
  Future EditData(id) async {
    var url = "http://3.3.134.48/project/fun/editData.php";
    var res = await http.post(Uri.parse(url),
        body: {'id': id, 'name': name.text, 'email': email.text});

    if (res.statusCode == 200) {
      var red = jsonDecode((res.body));

      print(red);
    }
  }

  // --------------DeleteData--------
  Future DeleteData(id) async {
    var url = "http://3.3.134.48/project/fun/deleteData.php";

    var res = await http.post(Uri.parse(url), body: {'id': id});

    if (res.statusCode == 200) {
      var red = jsonDecode((res.body));

      print(red);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }

  getData() async {
    await ReadData();
  }

// هذا الفنكشن حق الي يضيف العناصر علاملة الزايد
  // ----------AddData---------
  AddUsers() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 300,
              child: Column(
                children: [
                  TextFormField(
                    controller: name,
                      decoration: InputDecoration(
                      labelText: "Name"
                    ),
                  ),
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      labelText: "Email"
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print(name.text);
                        print(email.text);
                        AddData();
                        Navigator.pop(context);
                      },
                      child: Text("Send"))
                ],
              ),
            ),
          );
        });
  }

  // ----------EditData---------
  EditUsers(id) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 300,
              child: Column(
                children: [
                  TextFormField(
                    controller: name,
                  ),
                  TextFormField(
                    controller: email,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print(name.text);
                        print(email.text);
                        Navigator.pop(context);
                        print(id);
                        EditData(id);
                      },
                      child: Text("Send"))
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 146, 21, 223),
            title: Center(
                child: Text(
              " السله ",
              style: TextStyle(color: const Color.fromARGB(255, 246, 244, 244)),
            )),
            actions: [
              IconButton(
                onPressed: () {
                  AddUsers(); // هنا استدعينا الفنكشن اق الزايد الاضافه داخل البوتون
                },
                icon: Icon(
                  Icons.add,
                  color: const Color.fromARGB(255, 221, 217, 217),
                ),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homelauout()));
                },
                icon: Icon(
                  Icons.home,
                  color: const Color.fromARGB(255, 233, 229, 229),
                ),
              ),
            ],
          ),
          body: ListView.builder(
              itemCount: list.length,
              itemBuilder: (ctx, i) {
                return ListTile(
                  title: Text(list[i]["username"]),
                  subtitle: Text(list[i]["email"]),
                  leading: CircleAvatar(
                    radius: 20,
                    child: Text(list[i]["username"]
                        .toString()
                        .substring(0, 2)
                        .toUpperCase()),
                    
                  ),
                  trailing: Container(
                    width: 100,
                    child: Row(children: [
                      IconButton(
                          onPressed: () {
                            EditUsers(list[i]['userid']);
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.teal,
                          )),
                      IconButton(
                          onPressed: () {
                            DeleteData(list[i]['userid']);
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                          )),
                    ]),
                  ),
                );
              })),
    );
  }
}
