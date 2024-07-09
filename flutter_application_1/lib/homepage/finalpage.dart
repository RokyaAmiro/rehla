import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/all%20trip.dart';

class finalpage extends StatelessWidget {
  const finalpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      ///////image
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/ff.jpg"), fit: BoxFit.cover)),
      ),
      Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 450),
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          height: 60,
          color: const Color.fromARGB(255, 174, 140, 229),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const sec();
            }));
          },
          child: const Text(
            "العوده للشاشه الرئسيه",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      )
    ]));
  }
}
