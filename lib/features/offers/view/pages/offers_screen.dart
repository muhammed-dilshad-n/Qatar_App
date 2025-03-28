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
      backgroundColor: const Color.fromARGB(255, 208, 178, 227),
      body: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 239, 235, 235),
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
            height: 50,
            width: double.infinity,
            color: const Color(0xFFdfbbf7),
            child: ButtonsTabBar(
              height: 80,
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
          ),
          // Container for TabBarView to avoid using Expanded in SingleChildScrollView
          Expanded(
            child: TabBarView(
              controller: _tabControllers,
              children: const [
                AllOffersScreen(),
                AllOffersScreen(),
                AllOffersScreen(),
                AllOffersScreen(),
                AllOffersScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
