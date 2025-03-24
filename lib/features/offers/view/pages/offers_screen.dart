import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:qatar_application/features/offers/all_offers/screens/all_offers_screen.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({super.key});

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabControllers;

  @override
  void initState() {
    super.initState();
    _tabControllers = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabControllers.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 218, 217, 215),
                filled: true,

                hintText: 'Find all shopping flyers in one place',

                hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                constraints: BoxConstraints(maxHeight: 50),
                suffix: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      const Color.fromARGB(255, 88, 4, 101),
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "search",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.deepPurple,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
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
                  width: 100,
                  controller: _tabControllers,
                  tabs: [
                    Tab(text: "All Offers"),
                    Tab(text: "Eid Offers"),
                    Tab(text: "Ramadan"),
                    Tab(text: "Supermarket"),
                    Tab(text: "Electrocics"),
                  ],
                ),
              ],
            ),
          ),
          // Container for TabBarView to avoid using Expanded in SingleChildScrollView
          Expanded(
            child: TabBarView(
              controller: _tabControllers,
              children: const [
                AllOffersScreen(),
                Center(child: Text("Content for Tab 2")),
                Center(child: Text("Content for Tab 3")),
                Center(child: Text("Content for Tab 2")),
                Center(child: Text("Content for Tab 3")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
