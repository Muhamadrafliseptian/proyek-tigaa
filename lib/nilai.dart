import 'package:e_learning/app/modules/ujian/views/ujian_view.dart';
import 'package:e_learning/nilai_uas.dart';
import 'package:e_learning/nilai_uts.dart';
import "package:flutter/material.dart";

import 'package:flutter/material.dart';

import 'app/modules/homepage/views/homepage_view.dart';

void main() {
  runApp(const nilai());
}

class nilai extends StatelessWidget {
  const nilai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Nilai',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomepageView()),
            );
          },
        ),
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
            color: Colors.blue,
          ),
          child: Stack(children: [
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => uts()),
                    );
                  },
                  child: Text(
                    "Ujian Tengah Semester",
                    style: TextStyle(color: Colors.white),
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
            color: Colors.blue,
          ),
          child: Stack(children: [
            Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => uas()),
                    );
                  },
                  child: Text(
                    "Ujian Akhir Semester",
                    style: TextStyle(color: Colors.white),
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
