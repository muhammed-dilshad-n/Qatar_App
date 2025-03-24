import 'package:flutter/material.dart';

class TabBarWithoutAppBar extends StatefulWidget {
  const TabBarWithoutAppBar({super.key});

  @override
  TabBarWithoutAppBarState createState() => TabBarWithoutAppBarState();
}

class TabBarWithoutAppBarState extends State<TabBarWithoutAppBar>
    with SingleTickerProviderStateMixin {
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
      body: Column(
        children: [
          // Custom TabBar at the top
          Container(
            color: Colors.blue,
            child: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: "Tab 1"),
                Tab(text: "Tab 2"),
                Tab(text: "Tab 3"),
              ],
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
            ),
          ),
          // Content for each tab
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Center(child: Text("Content for Tab 1")),
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
