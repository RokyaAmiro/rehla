import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/all%20trip.dart';

class help extends StatelessWidget {
  const help({super.key});

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
            height: 60,
            color: const Color.fromARGB(205, 239, 236, 236),
            alignment: Alignment.center,
            /////////////////text
            child: const Text(
              'Rehla',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 96, 70, 141),
              ),
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 200),
                child: TextFormField(
                  minLines: 1,
                  maxLines: 40,
                  decoration: InputDecoration(
                    enabled: true,
                    labelText: 'problem',
                    labelStyle: TextStyle(color: Colors.deepPurple),
                    hintText:
                        '                                           ..وصف باختصار ما المشكله',
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(189, 128, 98, 180),
                      height: .7,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 177, 130, 195),
                            width: 1.5)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 111, 33, 148),
                            width: 1.5)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 300,
                    child: Card(
                      color: Color.fromARGB(255, 147, 110, 209),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const sec();
                          }));
                        },
                        child: const Text(
                          'ارسال',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 300,
                    child: Card(
                      color: const Color.fromARGB(255, 143, 111, 197),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const sec();
                          }));
                        },
                        child: const Text(
                          'رجوع',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
