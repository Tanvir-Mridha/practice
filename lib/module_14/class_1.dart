import'package:flutter/material.dart';
class module14class1 extends StatefulWidget {
  const module14class1({super.key});

  @override
  State<module14class1> createState() => _module14class1State();
}

class _module14class1State extends State<module14class1> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom TabBar'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              child: TabBar(
                controller: _tabController,
                  tabs: [
                Tab(text: 'Home'),
                Tab(text: 'Profile'),
                Tab(text: 'Settings'),
              ]),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                  children: [
                    Center(child: Text('Home View')),
                    Center(child: Text('Profile View')),
                    Center(child: Text('Settings View')),
              
              ]),
            )
          ],
        ),
      ),
    );
  }
}
