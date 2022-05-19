import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/gestures.dart';
import '../../../routes/app_pages.dart';
import '../../login/controllers/login_controller.dart';

import 'dart:async';

class LoginView extends GetView<LoginController> {
  get style => null;

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(50.0),
        children: [
          SizedBox(height: 25),
          Text(
            "E-Test",
            style: TextStyle(
              color: Colors.blue.shade400,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "SMPN 1 Lohbener ",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.topCenter,
            height: 300,
            child: Image.asset(
              "assets/pictures/pana.png",
              fit: BoxFit.contain,
            ),
           ),
          
          SizedBox(height: 25),
          TextField(
          
            keyboardType: TextInputType.phone,
            autocorrect: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
              ),
               filled: true,
              fillColor: Colors.blue.shade100,
              hintText: "NIS",
            ),
          ),
          SizedBox(height: 25),
          TextField(
            obscureText: _isObscure,
            keyboardType: TextInputType.visiblePassword,
            // obscureText: true,
            autocorrect: false,
            decoration: InputDecoration(
              suffixIcon: IconButton(icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
              onPressed: (){
                // setState(() {
                //   _isObscure = !_isObscure;
                // });
              }),
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
              ),
              hintText: "Kata Sandi",
               filled: true,
              fillColor: Colors.blue.shade100,
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
                primary: Colors.blue,
                fixedSize: Size(150, 50),
                shape: new
                RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
              ),
            ),
            
        ],
      ),
    );
  }
}
