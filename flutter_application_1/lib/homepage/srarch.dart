import 'package:flutter/material.dart';
import 'package:flutter_application_1/all%20trip.dart';
import 'package:flutter_application_1/help.dart';
import 'package:flutter_application_1/loginout.dart';

class search extends StatelessWidget {
  const search({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 254, 254, 254),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            /////////app bar first
            backgroundColor: const Color.fromARGB(216, 104, 58, 183),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            ////////////  background color
            title: Card(
              margin: const EdgeInsets.only(right: 6),
              color: const Color.fromARGB(218, 194, 172, 224),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'البحث السريع عن رحله',
                  suffixIcon: Icon(
                    Icons.search,
                  ),
                ),
              ),
            )),
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
        body: Container(
          margin: const EdgeInsets.only(top: 100),
          child: Column(children: [
            const Image(image: AssetImage("images/st.jpg")),
            Card(
              color: const Color.fromARGB(196, 97, 66, 151),
              margin: const EdgeInsets.only(top: 100),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const sec();
                  }));
                },
                child: const Text(
                  "العوده للصفحه الرئيسيه",
                  style: TextStyle(
                      color: Color.fromARGB(255, 232, 225, 225), fontSize: 30),
                ),
              ),
            )
          ]),
        ));
  }
}
