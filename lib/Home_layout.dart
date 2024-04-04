import 'package:flutter/material.dart';
import 'package:flutter_application_811/Spare_parts.dart';
import 'package:flutter_application_811/about_of_appliction.dart';
import 'package:flutter_application_811/login.dart';
import 'package:flutter_application_811/models/10.dart';
import 'package:flutter_application_811/models/archove.dart';
import 'package:flutter_application_811/models/shoping.dart';

import 'package:flutter_application_811/w_grid_view.dart';

class Homelauout extends StatefulWidget {
  const Homelauout({super.key});

  @override
  State<Homelauout> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homelauout> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
       
        child: Container(
          color: Colors.white,
          child: ListView(padding: EdgeInsets.zero, children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/Folder.jpg"))),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/9.jpg")),
                accountName: Text("trki fahd"),
                accountEmail: Text("asd.jjguy@gmail.com")),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () =>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const home_gridview_task(),),),
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text("favorite"),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const archived () ));
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: const Text("Spare_parts"),
              onTap: () {Navigator.push(
                context, MaterialPageRoute(builder: (context) => Spare_parts()));},
            ),
             ListTile(
              leading: const Icon(Icons.explicit_sharp),
              title: const Text("about_of_aplication"),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const about_of_aplication () ));
              },
            ),
            
            ListTile(
              leading: const Icon(Icons.login_outlined),
              title: const Text("login_outlined"),
              onTap: () {Navigator.push(
                context, MaterialPageRoute(builder: (context) =>homepage()));},
            ),
            
          ]),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 146, 21, 223),
        title: Center(
            child: Text(
          "ورشتي",
          style: TextStyle(color: Colors.white),
        )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
           
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => shoping()));
            
            },
            icon: Icon(
              Icons.person_3_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
       
        backgroundColor: Color.fromARGB(255, 240, 239, 241),

        currentIndex: currentIndex,

        onTap: (index) {
          //   هذا اذا ضغطت واحد من القةايم الي تحت ياخذ انديكس(index) من شان يتحرك معك اذا
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,color: Colors.black,), label: "Spare parts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite,color: Colors.black,), label: "archived"),
        ],
      ),
      body: asd[currentIndex],
    );
  }
}

List<Widget> asd = [home_gridview_task(), Spare_parts(), archived()];
