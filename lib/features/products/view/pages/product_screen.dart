import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

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
      "assets/images/phone1.png",
      "assets/images/phone2.png",
      "assets/images/phone3.png",
      "assets/images/phone4.png",
      "assets/images/phone1.png",
      "assets/images/phone2.png",
      "assets/images/phone3.png",
      "assets/images/phone4.png",
      "assets/images/phone1.png",
      "assets/images/phone2.png",
      "assets/images/phone3.png",
      "assets/images/phone4.png",
    ];
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 239, 235, 235),
                  filled: true,
                  prefixIcon: Icon(Icons.search, size: 35),
                  suffixIcon: IconButton(
                    onPressed: () {
                      searchController.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                  hintText: 'Search products',
                  prefixIconConstraints: BoxConstraints.loose(Size(100, 40)),
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                  constraints: BoxConstraints(maxHeight: 50),
                ),
              ),
            ),
            SizedBox(height: 15),
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
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 350,
                height: 30,
                child: Text(
                  "Mobiles offers in Qatar - Doha",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 500,
                height: 100,
                child: GridView.builder(
                  physics: ClampingScrollPhysics(),
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
                          Row(
                            children: [
                              Spacer(),
                              Text(
                                textAlign: TextAlign.end,
                                "QAR 299.00",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: const Color.fromARGB(255, 247, 3, 3),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Doha Daymart",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
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
