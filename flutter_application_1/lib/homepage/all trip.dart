import 'package:flutter/material.dart';
/////////////////////كل الصفح الى معمول ليها NAVEGATOR
import 'package:flutter_application_1/alx.dart';
import 'package:flutter_application_1/dahab.dart';
import 'package:flutter_application_1/help.dart';
import 'package:flutter_application_1/loginout.dart';
import 'package:flutter_application_1/sfari.dart';
import 'package:flutter_application_1/siwa%20.dart';
import 'package:flutter_application_1/srarch.dart';
import 'package:flutter_application_1/piramids.dart';

// ignore: camel_case_types
class sec extends StatelessWidget {
  const sec({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          /////////app bar first
          backgroundColor: Colors.deepPurple,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          ////////////  background color
          title: Container(
            width: double.infinity,
            color: const Color.fromARGB(205, 239, 236, 236),
            alignment: Alignment.center,
            //////////////////text
            child: const Text(
              ' الرحلات',
              style: TextStyle(
                fontSize: 30,
                color: Colors.deepPurple,
              ),
            ),
          ),
          ////////////////button for icon
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 6),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const search();
                  }));
                },
                icon: const Icon(
                  Icons.travel_explore_outlined,
                  size: 35,
                ),
              ),
            ),
          ],
        ),
        /////////
        /////////
        /////////drower
        endDrawer: Drawer(
            child: Column(children: [
          const SizedBox(
            height: 70,
          ),
          Row(
            children: [
              Container(
                width: 280,
                height: 110,
                margin: const EdgeInsets.only(left: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: const BorderSide(
                          color: Color.fromARGB(255, 145, 96, 230),
                          width: 2.5)),
                  child: const Center(
                      child: Text(
                    ' فاطمه كشرى',
                    style: TextStyle(fontSize: 30),
                  )),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 360,
            height: 60,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 145, 96, 230), width: 1)),
              child: Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const help();
                      }));
                    },
                    child: const Text(
                      "                   مساعده     ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
                    ),
                  ),
                  const Icon(
                    Icons.help_outline_rounded,
                    color: Colors.deepPurpleAccent,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 360,
            height: 60,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 145, 96, 230), width: 1)),
              child: Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const logout();
                      }));
                    },
                    child: const Text(
                      "         تسجيل خروج     ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
                    ),
                  ),
                  const Icon(
                    Icons.logout,
                    color: Colors.deepPurpleAccent,
                  ),
                ],
              ),
            ),
          ),
        ])),
        body: Container(
            alignment: Alignment.center,
            width: 400,
            child: SingleChildScrollView(
              child: Column(children: [
                MaterialButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const third();
                      }));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 15),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 224, 224)),
                      child: Column(
                        children: [
                          Card(
                            child: Container(
                              child: const Image(
                                  image: AssetImage("images/pi.jpg")),
                            ),
                          ),
                          const Text(
                            '  الاهرامات',
                            style: TextStyle(fontSize: 20),
                          ),
                          const Text(
                            '150',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    )),
                //////////////////alx
                MaterialButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const alx();
                      }));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 224, 224)),
                      child: Column(
                        children: [
                          Card(
                            child: Container(
                              child: const Image(
                                  image: AssetImage("images/a.jpg")),
                            ),
                          ),
                          const Text(
                            'الاسكندريه',
                            style: TextStyle(fontSize: 20),
                          ),
                          const Text(
                            '250',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    )),
                ////////////////////siwa
                MaterialButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const siwa();
                      }));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 224, 224)),
                      child: Column(
                        children: [
                          Card(
                            child: Container(
                              child: const Image(
                                  image: AssetImage("images/s.jpg")),
                            ),
                          ),
                          const Text(
                            'سيوه',
                            style: TextStyle(fontSize: 20),
                          ),
                          const Text(
                            '350',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    )),
                MaterialButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const dahab();
                      }));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 224, 224)),
                      child: Column(
                        children: [
                          Card(
                            child: Container(
                              child: const Image(
                                  image: AssetImage("images/d.jpg")),
                            ),
                          ),
                          const Text(
                            'دهب',
                            style: TextStyle(fontSize: 20),
                          ),
                          const Text(
                            '500',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    )),
                MaterialButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const sfari();
                      }));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 20),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 227, 224, 224)),
                      child: Column(
                        children: [
                          Card(
                            child: Container(
                              child: const Image(
                                  image: AssetImage("images/dd.jpg")),
                            ),
                          ),
                          const Text(
                            'سفارى',
                            style: TextStyle(fontSize: 20),
                          ),
                          const Text(
                            '350',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    )),
              ]),
            )));
  }
}
