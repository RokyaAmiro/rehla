import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/fawery.dart';
import 'package:flutter_application_1/help.dart';
import 'package:flutter_application_1/loginout.dart';

class reservation extends StatelessWidget {
  const reservation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          ////////////  background color
          title: Container(
            width: 270,
            color: const Color.fromARGB(205, 239, 236, 236),
            alignment: Alignment.center,
            /////////////////text
            child: const Text(
              ' تفاصيل الرحله',
              style: TextStyle(
                fontSize: 30,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ),
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
                    ' فاطنه كشرى',
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
        body: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 30, left: 65),
            child: Row(
              children: const [
                Text(
                  "يرجى ادخال بياناتك لاتمام الحجز",
                  style: TextStyle(
                      fontSize: 23, color: Color.fromARGB(255, 129, 84, 206)),
                ),
              ],
            ),
          ),
          ///////////////////////
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 40,
            width: 345,
            child: TextFormField(
              decoration: InputDecoration(
                enabled: true,
                hintText: 'Enter your first name',
                hintStyle: const TextStyle(
                  color: Color.fromARGB(189, 128, 98, 180),
                  height: .7,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 177, 130, 195), width: 1.5)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 111, 33, 148), width: 1.5)),
              ),
            ),
          ),
///////////////////////////////////////////////////2
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 40,
            width: 345,
            child: TextFormField(
              decoration: InputDecoration(
                enabled: true,
                hintText: 'second your Name',
                hintStyle: const TextStyle(
                  color: Color.fromARGB(189, 128, 98, 180),
                  height: .7,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 177, 130, 195), width: 1.5)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 111, 33, 148), width: 1.5)),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 40,
            width: 345,
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabled: true,
                hintText: 'date                     /   /    / ',
                hintStyle: const TextStyle(
                  color: Color.fromARGB(189, 128, 98, 180),
                  height: .7,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 177, 130, 195), width: 1.5)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 111, 33, 148), width: 1.5)),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 40,
            width: 345,
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabled: true,
                hintText: 'phone number        01xxxxxxxx',
                hintStyle: const TextStyle(
                  color: Color.fromARGB(189, 128, 98, 180),
                  height: .7,
                ),
                suffixIcon:
                    Icon(Icons.phone, color: Color.fromARGB(189, 128, 98, 180)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 177, 130, 195), width: 1.5)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 111, 33, 148), width: 1.5)),
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Container(
            width: 200,
            child: Card(
              color: const Color.fromARGB(197, 86, 59, 134),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const fawery();
                  }));
                },
                child: const Text(
                  "Next",
                  style: TextStyle(
                      color: Color.fromARGB(255, 232, 225, 225), fontSize: 20),
                ),
              ),
            ),
          )
        ]));
  }
}
