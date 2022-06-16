import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/ujian_controller.dart';

import '../../../routes/app_pages.dart';

class UjianView extends GetView<UjianController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
          onPressed: () => Get.offAllNamed(Routes.HOME),
          icon: Icon(Icons.arrow_back_ios),
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue.shade200,
          ),
          child: Stack(children: [
            Column(
              children: [
                Container(
                  child: Text(
                    "assets/pictures/profil.png",
                  ),
                ),
              ],
            ),
          ]),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue.shade200,
          ),
          child: Stack(children: [
            Column(
              children: [
                Container(
                  child: Text(
                    "assets/pictures/profil.png",
                  ),
                ),
              ],
            ),
          ]),
        )
      ]),
    );
  }
}
