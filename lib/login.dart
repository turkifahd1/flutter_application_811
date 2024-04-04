import 'package:flutter/material.dart';
import 'package:flutter_application_811/Home_layout.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  late Size mediaSize;
  late Color mycolor;
  var reye = Icons.visibility_off;
  bool pass = true;
  final form_key = GlobalKey<FormState>();
  // TextEditingController emailController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  bool remmberUser = false;

  @override
  Widget build(BuildContext context) {
    mycolor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: mycolor,
        image: DecorationImage(
          image: AssetImage("assets/images/tt.jpg"),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(mycolor.withOpacity(0.2), BlendMode.dstATop),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Positioned(top: 80, child: _buildTop()),
          Positioned(bottom: 0, child: _buildBottom()),
        ]),
      ),
    );
  }

  Widget _buildTop() {
    return SizedBox(
      width: mediaSize.width,
      child: const Column(
        //  mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.location_on_sharp,
            size: 100,
            color: Colors.white,
          ),
          Text(
            "GO MAP",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
                letterSpacing: 2),
          )
        ],
      ),
    );
  }

  Widget _buildBottom() {
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: _bulidForm(),
        ),
      ),
    );
  }

  Widget _bulidForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome",
          style: TextStyle(
              color: mycolor, fontSize: 32, fontWeight: FontWeight.w500),
        ),
        _buildGreyText("please login with your information"),
        const SizedBox(
          height: 33,
        ),
        _buildGreyText("Email Addres"),
        // _bulidInputfiled(emailController),
        Form(
          key: form_key,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.done,
                  color: Color.fromARGB(255, 44, 43, 43),
                ),
                onPressed: () {},
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "E-mail is empty";
              }
              final emailRegex =
                  r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$';
              if (!RegExp(emailRegex).hasMatch(value)) {
                return " Enter Valid E-mail";
              }
              return null;
            },
          ),
        ),

        const SizedBox(
          height: 4,
        ),
        _buildGreyText("password"),
        // _bulidInputfiled(passwordController, isPassword: true),

        TextFormField(
          keyboardType: TextInputType.visiblePassword,
          obscureText: pass,
          decoration: InputDecoration(
            // contentPadding: EdgeInsets.symmetric(horizontal: 5),

            suffixIcon: IconButton(
              icon: Icon(
                reye,
                color: Color.fromARGB(255, 44, 43, 43),
              ),
              onPressed: () {
                setState(() {
                  if (pass) {
                    reye = Icons.visibility;
                  } else {
                    reye = Icons.visibility_off;
                  }
                  pass = !pass;
                });
              },
            ),
          ),
        ),

        const SizedBox(height: 6),
        _buildRememberForget(),
        const SizedBox(height: 6),
        _bulidLoginButton(),
        const SizedBox(height: 6),
        _buildOtherLogin(),
      ],
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey),
    );
  }

  // Widget _bulidInputfiled(TextEditingController controller,
  //     {isPassword = false}) {
  //   return TextField(
  //     controller: controller,
  //     decoration: InputDecoration(
  //       suffixIcon: isPassword ? Icon(Icons.remove_red_eye) : Icon(Icons.done),
  //     ),
  //     obscureText: isPassword,
  //   );
  // }

  Widget _buildRememberForget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
                value: remmberUser,
                onChanged: (value) {
                  setState(() {
                    remmberUser = value!;
                  });
                }),
            _buildGreyText("Remmeber me")
          ],
        ),
        // TextButton(
        //     onPressed: () {}, child: _buildGreyText("I forget my password"),),
      ],
    );
  }

  Widget _bulidLoginButton() {
    return ElevatedButton(
      onPressed: () {
        if (form_key.currentState!.validate()) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Homelauout(),
              ));
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text(
                "تم تسجيل الدخول بنجاح",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: const Color.fromARGB(255, 176, 175, 172),
              action: SnackBarAction(
                label: "الغاء",
                textColor: Colors.black,
                onPressed: () {},
              ),
            ),
          );
        }
       
        // debugPrint("Email : ${emailController.text}");
        // debugPrint("Passwoed : ${passwordController.text}");
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        elevation: 20,
        shadowColor: mycolor,
        minimumSize: const Size.fromHeight(60),
      ),
      child: Text("LOGIN"),
    );
  }

  Widget _buildOtherLogin() {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          _buildGreyText("Or login with"),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Tab(
                icon: Image.asset(
                  "assets/images/fasbook.jpg",
                  width: 40,
                  height: 40,
                ),
              ),
              Tab(
                icon: Image.asset(
                  "assets/images/istgram.jpg",
                  width: 40,
                  height: 40,
                ),
              ),
              Tab(
                icon: Image.asset(
                  "assets/images/watsaap.jpg",
                  width: 40,
                  height: 40,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}





//carousel_slider: ^4.2.1