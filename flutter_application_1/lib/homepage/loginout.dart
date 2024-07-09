import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/all%20trip.dart';

class logout extends StatelessWidget {
  const logout({super.key});

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
            width: 370,
            height: 70,
            margin: const EdgeInsets.only(right: 30),
            color: Color.fromARGB(255, 243, 232, 248),
            alignment: Alignment.center,
            //////////////////text
            child: const Text(
              'Rehla',
              style: TextStyle(
                fontSize: 30,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ),
        body: Center(
          child: Container(
            width: 360,
            height: 400,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              shadowColor: const Color.fromARGB(255, 88, 41, 165),
              color: const Color.fromARGB(255, 244, 237, 248),
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 50),
                      child: const Icon(
                        Icons.warning,
                        size: 100,
                        color: Color.fromARGB(255, 143, 111, 197),
                      )),
                  const Text(
                    'هل ترغب فى تسجيل',
                    style: TextStyle(fontSize: 25, color: Colors.deepPurple),
                  ),
                  const Text(
                    'خروجك',
                    style: TextStyle(fontSize: 25, color: Colors.deepPurple),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Card(
                        color: Colors.red,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const sec();
                            }));
                          },
                          child: const Text(
                            'لا',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 120,
                      ),
                      Card(
                        color: const Color.fromARGB(255, 143, 111, 197),
                        child: MaterialButton(
                          onPressed: () {},
                          child: const Text(
                            'نعم',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
