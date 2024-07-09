import 'package:flutter/material.dart';
import 'package:flutter_application_1/finalpage.dart';

class fawery extends StatelessWidget {
  const fawery({super.key});

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
              'حجز الرحله',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 96, 70, 141),
              ),
            ),
          ),
        ),
        body: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 30, left: 65),
            child: Row(
              children: const [
                Text(
                  "    يرجى ادخال بياناتك لاتمام الحجز",
                  style: TextStyle(
                      fontSize: 23, color: Color.fromARGB(255, 129, 84, 206)),
                ),
              ],
            ),
          ),
          ///////////////////////
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 50,
            width: 375,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabled: true,
                hintText: 'Enter your email    Rehla@gmail.com     ',
                hintStyle: const TextStyle(
                  color: Color.fromARGB(189, 128, 98, 180),
                  height: .7,
                ),
                labelText: 'Email',
                labelStyle: const TextStyle(
                  color: Color.fromARGB(189, 128, 98, 180),
                  height: .7,
                ),
                suffixIcon: const Icon(Icons.email,
                    color: Color.fromARGB(189, 128, 98, 180)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
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
            height: 200,
            width: 350,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                  side: BorderSide(
                      color: Color.fromARGB(255, 163, 136, 211), width: 2)),
              child: Container(
                margin: EdgeInsets.only(top: 15),
                child: Column(
                  children: const [
                    Text(
                      '                   يرجى التاكد من ادخال الاميل بشكل صحيح',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '                                 ولذلك لان الرقم الذى سيتم الدفع',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '                 من خلاله المبلغ المطلوب لتاكيد حجز الرحله',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '                       علما بانه سيصل لك رساله بتاكيد الحجز',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '                                                              بعد الدفع',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '                                       نفس الاميل المطلوب ادخاله',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 300,
            height: 50,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13)),
              color: const Color.fromARGB(255, 158, 123, 218),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const finalpage();
                }));
              },
              child: const Text(
                'تاكيد',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          )
        ]));
  }
}
