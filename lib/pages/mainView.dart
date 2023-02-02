import 'package:facebook_ui/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'friends_page.dart';
import 'notifications_page.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            'facebook',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.grey.shade800,
                )
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.grey.shade800,
                )
            ),
            const SizedBox(width: 10,),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home, color: Colors.grey,size: 30,)),
              Tab(icon: Icon(Icons.people, color: Colors.grey,size: 30,)),
              Tab(icon: Icon(Icons.notifications, color: Colors.grey,size: 30,)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomePage(),
            FriendsPage(),
            NotificationsPage(),
          ],
        ),
      ),
    );
  }
}
