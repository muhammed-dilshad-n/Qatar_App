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
          crossAxisAlignment: CrossAxisAlignment.start,
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
              ),

              child: Image.asset("assets/images/add.png", fit: BoxFit.fill),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 350,
                height: 30,
                child: Text(
                  "Qatar - Doha offers in Q4M Online",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 500,
                height: 100,
                child: GridView.builder(
                  // physics: RangeMaintainingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.6,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: offers.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 245, 243, 243),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(offers[index]),
                          Text(
                            "Grand Hypermarket",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
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
                                  color: const Color.fromARGB(
                                    255,
                                    182,
                                    178,
                                    178,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "+8 Days left",
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    182,
                                    178,
                                    178,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 120),
          ],
        ),
      ),
    );
  }
}

// Image.asset(offers[index], fit: BoxFit.fill)
