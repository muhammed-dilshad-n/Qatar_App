import 'package:flutter/material.dart';

class AllOffersScreen extends StatelessWidget {
  const AllOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/lulu.png",
      "assets/images/careefour.png",
      "assets/images/almeera.png",
      "assets/images/marza.png",
      "assets/images/paris.png",
      "assets/images/safari.png",
      "assets/images/careefour.png",
      "assets/images/almeera.png",
      "assets/images/marza.png",
      "assets/images/paris.png",
    ];
    List<String> offers = [
      "assets/images/1.jpeg",
      "assets/images/2.jpeg",
      "assets/images/3.jpeg",
      "assets/images/4.jpeg",
      "assets/images/5.jpeg",
      "assets/images/1.jpeg",
      "assets/images/2.jpeg",
      "assets/images/3.jpeg",
      "assets/images/4.jpeg",
      "assets/images/5.jpeg",
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Image.asset(images[index], fit: BoxFit.fill),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue,
              ),
              width: 450,
              height: 70,
              child: Image.asset("assets/images/add.png", fit: BoxFit.fill),
            ),
            Expanded(
              child: SizedBox(
                child: GridView.builder(
                  physics: ClampingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: offers.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Container(
                        child: Image.asset(offers[index], fit: BoxFit.fill),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
