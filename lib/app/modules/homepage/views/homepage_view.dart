import 'package:e_learning/app/modules/materi/views/materi_view.dart';
import 'package:e_learning/app/modules/ujian/views/ujian_view.dart';
import 'package:e_learning/app/modules/uas/views/uas_view.dart';
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
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
          onPressed: () => Get.offAllNamed(Routes.HOME),
          icon: Icon(Icons.arrow_back_ios),
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        title: Image.asset(
        "assets/logo/logo-polindra.png", height: 30, width: 30,
        ),
        actions: [
          IconButton(
             onPressed: () => Get.offAllNamed(Routes.MATERI),
          icon: Icon(Icons.notifications,
          color: Colors.black)
          ),
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue.shade200,
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
                        color: Color(0xffFF317B),
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
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MateriView()),
                    );
                  },
                child: CardFolder(
                  image: Image.asset("assets/pictures/Folder.png",),
                  title: "Materi",
                  date: "2 jam yang lalu",
                  color: Color.fromARGB(255, 1, 111, 171),
                ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MateriView()),
                    );
                  },
               child: CardFolder(
                  image: Image.asset("assets/ic/exam (3).png", height: 30, width: 30,),
                  title: "UAS",
                  date: "2 jam yang lalu",
                  color: Color.fromARGB(255, 199, 145, 7),
                ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MateriView()),
                    );
                  },
             
                child: CardFolder(
                  
                  image: Image.asset("assets/ic/test.png", height: 30, width: 30,),
                  title: "UTS",
                  date: "2 jam yang lalu",
                  color: Color.fromARGB(255, 255, 138, 138),
                ),
                   ),
                   
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MateriView()),
                    );
                  },
             
                child: CardFolder(
                  
                  image: Image.asset("assets/ic/score.png", height: 30, width: 30,),
                  title: "Nilai", 
                  date: "2 jam yang lalu",
                  color:Color.fromARGB(255, 0, 171, 162),
                ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Berita terbaru",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Lihat Semua",
                                    style: TextStyle(
                                      fontSize: 16,
                                       color: Color.fromARGB(255, 93, 176, 244),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
           ),
            SizedBox(height: 20),
            
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      height: 135,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/images-1.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      height: 135,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/images-2.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      height: 135,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/images-1.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
           ),
          ],
      ),
      
      
  //     bottomNavigationBar: ConvexAppBar( backgroundColor: Colors.blue,
  //   items: [
  //     TabItem
  //     (icon: Icons.home, title: 'Home',),
  //     TabItem(icon: Icons.map, title: 'Discovery'),
  //     TabItem(icon: Icons.people, title: 'Profile'),
  //   ],
  //   initialActiveIndex: 2,//optional, default as 0
  //   onTap: (int i) => print('click index=$i'),
  // ),
    );
  }
}

UasView() {
}

class CardFolder extends StatelessWidget {
  CardFolder({
    Key? key,
    required this.title,
    required this.date,
    required this.color,
    required this.image,
  }) : super(key: key);

  final String title;
  final String date;
  final Color color;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: Get.width * 0.4,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color.withOpacity(0.3),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          SizedBox(height: 15),
          Text(title, style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: color,
          ),
          ),
          SizedBox(height: 5,),
          Text(
            date,
            style: TextStyle(
            fontSize: 16,
            color: color,
          ),
           ),
        ],
      ),
    );
    
  }
}