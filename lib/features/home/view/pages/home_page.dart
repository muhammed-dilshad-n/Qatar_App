import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:qatar_application/features/coupons/view/pages/coupons_screen.dart';
import 'package:qatar_application/features/home/view/widgets/drawer_widget.dart';
import 'package:qatar_application/features/offers/view/pages/offers_screen.dart';
import 'package:qatar_application/features/products/view/pages/product_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  String dropDownValue = "Qa-En";
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFdfbbf7),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                      height: 40,
                      child: Image.asset(
                        "assets/images/logo.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: 35,
                      height: 30,
                      child: Image.asset("assets/images/flag.png"),
                    ),
                    DropdownButton<String>(
                      value: dropDownValue,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                      ),
                      items: [
                        DropdownMenuItem<String>(
                          value: "Qa-En",
                          child: Text("Qa-En"),
                        ),
                        DropdownMenuItem<String>(
                          value: "Arabic",
                          child: Text("Arabic"),
                        ),
                      ],
                      onChanged: (String? value) {
                        setState(() {
                          dropDownValue = value!;
                        });
                      },
                    ),
                    Builder(
                      builder: (context) {
                        return IconButton(
                          onPressed: () {
                            Scaffold.of(context).openEndDrawer();
                          },
                          icon: Icon(Icons.menu, size: 35),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10), // Add spacing between header and tabs
              ButtonsTabBar(
                height: 45,
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
                labelSpacing: 10,
                width: 125,
                controller: _tabController,
                tabs: const [
                  Tab(text: "Offers"),
                  Tab(text: "Products"),
                  Tab(text: "Coupons"),
                ],
              ),
              // Container for TabBarView to avoid using Expanded in SingleChildScrollView
              SizedBox(
                height:
                    MediaQuery.of(
                      context,
                    ).size.height, // Fixed height for TabBarView
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    OffersScreen(),
                    ProductScreen(),
                    CouponsScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: DrawerWidget(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            // Add more ListTiles for additional items
          ],
        ),
      ),
    );
  }
}
