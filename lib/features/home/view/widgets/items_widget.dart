import 'package:flutter/material.dart';

class Itemwidget extends StatelessWidget {
  const Itemwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color.fromARGB(255, 202, 196, 196),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              spacing: 12,

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/dddddddddd.png", fit: BoxFit.fill),
                Text(
                  "Grand Hypermarket",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
                Text(
                  "Eid Mubarak",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "+23 pages",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 182, 178, 178),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "+8 Days left",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 182, 178, 178),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 85,
          left: 50,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            width: 60,
            height: 60,
            child: Image.asset("assets/images/D4D.png", fit: BoxFit.fill),
          ),
        ),
      ],
    );
  }
}
