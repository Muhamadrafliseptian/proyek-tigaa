import 'package:e_learning/nilai.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(uas());
}

class uas extends StatefulWidget {
  @override
  _DataTableExample createState() => _DataTableExample();
}

class _DataTableExample extends State<uas> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Nilai',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
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
                  MaterialPageRoute(builder: (context) => nilai()),
                );
              },
            ),
          ),
          body: ListView(children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 245, 245, 245),
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
                  ]),
              child: DataTable(
                columns: [
                  DataColumn(
                      label: Text('No',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Mata Pelajaran',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                  DataColumn(
                      label: Text('Nilai',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('1')),
                    DataCell(Text('IPA')),
                    DataCell(Text('90')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2')),
                    DataCell(Text('IPS')),
                    DataCell(Text('80')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('3')),
                    DataCell(Text('SBK')),
                    DataCell(Text('89')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('4')),
                    DataCell(Text('Matematika')),
                    DataCell(Text('87')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('5')),
                    DataCell(Text('Prakarya')),
                    DataCell(Text('87')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('6')),
                    DataCell(Text('Bahasa Inggris')),
                    DataCell(Text('87')),
                  ]),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.print,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => nilai()),
                      );
                    },
                  ),
                ],
              ),
            )
          ])),
    );
  }
}
