import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:qatar_application/features/coupons/categories/view/pages/categorie_screen.dart';

class CouponsScreen extends StatefulWidget {
  const CouponsScreen({super.key});

  @override
  State<CouponsScreen> createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabControllers;

  @override
  void initState() {
    super.initState();
    _tabControllers = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabControllers.dispose();
    super.dispose();
  }

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
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Stores",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 50,
                child: ListView.separated(
                  separatorBuilder:
                      (context, index) => const SizedBox(width: 10),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(images[index]),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 50,
              width: double.infinity,
              color: const Color.fromARGB(255, 239, 235, 235),
              child: ButtonsTabBar(
                borderColor: Colors.blueAccent,
                backgroundColor: const Color.fromARGB(255, 88, 4, 101),
                unselectedBackgroundColor: const Color.fromARGB(
                  255,
                  239,
                  235,
                  235,
                ),
                unselectedLabelStyle: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                contentCenter: true,
                width: 115,
                controller: _tabControllers,
                tabs: [
                  Tab(text: "All"),
                  Tab(text: "fashion & Gifts"),
                  Tab(text: "Health & Beauty"),
                  Tab(text: "Home & Garden"),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabControllers,
                children: const [
                  CategorieScreen(),
                  CategorieScreen(),
                  CategorieScreen(),
                  CategorieScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
