import 'package:e_learning/app/modules/home/views/login_view.dart';
import 'package:e_learning/app/modules/materi/views/materi_view.dart';
import 'package:e_learning/app/modules/ujian/views/ujian_view.dart';
import 'package:e_learning/app/modules/uas/views/uas_view.dart';
import 'package:e_learning/main.dart';
import 'package:e_learning/nilai.dart';
import 'package:e_learning/profile.dart';
import 'package:e_learning/table.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/homepage_controller.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class HomepageView extends GetView<HomepageController> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_on,
            color: Colors.blue,
          ),
        ),
        title: Text(
          "Portal Ujian",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        actions: [
          PopupMenuButton(
              offset: Offset(0, 45), // SET THE (X,Y) POSITION
              iconSize: 30,
              icon: Icon(
                Icons.more_horiz, // CHOOSE YOUR CUSTOM ICON
                color: Colors.blue,
              ),
              onSelected: (value) {},
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: 'Home',
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(children: [
                          Container(
                            child: Icon(
                              Icons.account_circle,
                              color: Colors.black45,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile()),
                              );
                            },
                            child: Text(
                              "Profil",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    // padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            // IconButton(
                            //   onPressed: () {
                            //     Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => Profileee()),
                            //     );
                            //   },

                            // ),

                            Container(
                              child: Icon(
                                Icons.logout,
                                color: Colors.black45,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => table()),
                                );
                              },
                              child: Text(
                                "Log Out",
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            // Text(
                            //   "Log Out",
                            //   style: TextStyle(
                            //       color: Colors.black45,
                            //       fontSize: 14,
                            //       fontWeight: FontWeight.w500),
                            // ),
                          ],
                        )
                      ],
                    ),
                  )
                ];
              })
        ],
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(15, 15, 20, 5),
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            child: Text(
              "Selamat Datang!",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Container(
            child: Text(
              "Good Luck :)",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: TextField(
              keyboardType: TextInputType.text,
              // obscureText: true,
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide.none,
                ),
                hintText: "Pencarian",
                filled: true,
                fillColor: Color.fromARGB(255, 236, 229, 229),
              ),
            ),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color.fromARGB(95, 86, 86, 86),
                blurRadius: 25,
                offset: const Offset(0, 10),
              )
            ]),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue,
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/pictures/profil.png",
                        fit: BoxFit.cover,
                      ),
                      width: 70,
                      height: 70,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Muhamad Rafli",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Siswa",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: Text(
                          "7 F",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Menu Utama",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MateriView()),
                    );
                  },
                  child: CardFolder(
                      // image: Image.asset(
                      //   "assets/pictures/Folder.png",
                      // ),
                      icon: Icon(
                        Icons.tablet_mac_sharp,
                        color: Colors.blue,
                      ),
                      title: "Materi",
                      color: Colors.white10),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MateriView()),
                    );
                  },
                  child: CardFolder(
                    // image: Image.asset(
                    //   "assets/ic/exam (3).png",
                    //   height: 30,
                    //   width: 30,
                    // ),
                    icon: Icon(
                      Icons.book_sharp,
                      color: Colors.orange,
                    ),

                    title: "UAS",
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MateriView()),
                    );
                  },
                  child: CardFolder(
                    // image: Image.asset(
                    //   "assets/ic/test.png",
                    //   height: 30,
                    //   width: 30,
                    // ),
                    icon: Icon(
                      Icons.book_rounded,
                      color: Color.fromARGB(255, 76, 144, 175),
                    ),

                    title: "UTS",
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => nilai()),
                    );
                  },
                  child: CardFolder(
                    // image: Image.asset(
                    //   "assets/ic/score.png",
                    //   height: 30,
                    //   width: 30,
                    // ),
                    icon: Icon(
                      Icons.score_sharp,
                      color: Colors.green,
                    ),

                    title: "Nilai",
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

UasView() {}

class CardFolder extends StatelessWidget {
  CardFolder({
    Key? key,
    required this.title,
    required this.color,
    required this.icon,
  }) : super(key: key);

  final String title;
  final Color color;

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: 150,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color.withOpacity(0.3),
        boxShadow: [
          //background color of box
          BoxShadow(
            color: Color.fromARGB(255, 239, 239, 239),
            //   soften the shadow
            spreadRadius: 1.0, //extend the shadow
            offset: Offset(
              1.0, // Move to right 10  horizontally
              1.0,
              // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          SizedBox(height: 15),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
