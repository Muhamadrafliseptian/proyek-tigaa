import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/gestures.dart';
import '../../../routes/app_pages.dart';
import '../../login/controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          SizedBox(height: 20),
          Container(
            alignment: Alignment.topCenter,
            height: 300,
            child: Image.asset(
              "assets/logo/login.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 25),
          Text(
            "Silahkan login dengan nim dan password ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 25),
          Text(
            "NIM",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          TextField(
          
            keyboardType: TextInputType.phone,
            autocorrect: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Contoh.2091920",
            ),
          ),
          SizedBox(height: 25),
          Text(
            "Password",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            autocorrect: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Contoh.2091920",
            ),
          ),
             SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOMEPAGE),
              child: Text(
                "MASUK",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 66, 165),
                fixedSize: Size(150, 50),
              ),
            ),
            Center(
              child: Text("Atau masuk dengan menggunakan"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 OutlinedButton(
              onPressed: () => Get.offAllNamed(Routes.HOMEPAGE),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Image.asset("assets/icons/facebook.png"),
                    SizedBox(width: 7,),
                  Text(
                    "Facebook",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF3B5998),
                    ),
                  ),
              
                ],
              ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                      Size(150, 50)
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  ), side: MaterialStateProperty.all(
                    BorderSide(color: Color(0xFF3B5998),
                    ),
                  ),
                ),
            ),
             OutlinedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Row(
                
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Image.asset("assets/icons/twitter.png"),
                  Text(
                    "Twitter",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0Xff1DA1F2),
                    ),
                  ),
              
                ],
              ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                      Size(150, 50)
                  ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  ), side: MaterialStateProperty.all(
                    BorderSide(color: Color(0Xff1DA1F2),)
                  ),
                ),
            ),
              ],
            )
        ],
      ),
    );
  }
}