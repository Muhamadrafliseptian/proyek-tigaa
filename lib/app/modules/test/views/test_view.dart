import 'package:e_learning/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/test_controller.dart';

class TestView extends GetView<TestController> {
  get style => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF1F1F1),
        leading: IconButton(
          onPressed: () => Get.offAllNamed(Routes.MATERI  ),
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        title: Text(
          "My Ujian",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 50),
           Image.asset("assets/pictures/Lantern-pana.png", width: 370, height: 400,),
           
          SizedBox(height: 20), 
          Container(
            child: Text(
              "Maaf soal belum tersedia", textAlign: TextAlign.center, style: TextStyle(fontSize: 15 ,),
            ),
          ),
        ],
      ),
    );
  }
}
