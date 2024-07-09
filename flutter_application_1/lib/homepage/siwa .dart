import 'package:flutter/material.dart';
import 'package:flutter_application_1/help.dart';
import 'package:flutter_application_1/loginout.dart';
import 'package:flutter_application_1/res.dart';

// ignore: camel_case_types
class siwa extends StatelessWidget {
  const siwa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            //////////////////text
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
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, left: 250),
              child: const Text(
                "سيوه",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              height: 400,
              padding: const EdgeInsets.all(10),
              child: const Card(
                elevation: 40,
                shadowColor: Colors.deepPurple,
                child: Image(image: AssetImage("images/s.jpg")),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.deepPurple),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 10, left: 20),
                child: Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(
                          left: 150,
                        ),
                        child: Column(
                          children: const [
                            Text('سعر الرحله للفرد:350 جنيه مصرى'),
                            Text("مكان الباص المشايه فى المنصوره"),
                            Text("موعد الرحله :يوم السبت بتاريخ 3/6"),
                            Text("الساعه 6 صباحا"),
                          ],
                        ))
                  ],
                ),
              ),
            ),
            Card(
              color: const Color.fromARGB(197, 136, 105, 190),
              margin: const EdgeInsets.only(top: 15, right: 250),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const reservation();
                  }));
                },
                child: const Text(
                  "حجز",
                  style: TextStyle(
                      color: Color.fromARGB(255, 232, 225, 225), fontSize: 30),
                ),
              ),
            )
          ],
        ));
  }
}
