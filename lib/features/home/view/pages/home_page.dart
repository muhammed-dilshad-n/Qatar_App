import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:qatar_application/features/home/view/widgets/drawer_widget.dart';
import 'package:qatar_application/features/offers/view/pages/offers_screen.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    SizedBox(
                      width: 70,
                      height: 30,
                      child: Image.asset(
                        "assets/images/d4d4.png",
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
                  219,
                  216,
                  216,
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
                width: 100,
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
                    MediaQuery.of(context).size.height *
                    1, // Fixed height for TabBarView
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    OffersScreen(),
                    Center(child: Text("Content for Tab 2")),
                    Center(child: Text("Content for Tab 3")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: DrawerWidget(),
    );
  }
}
