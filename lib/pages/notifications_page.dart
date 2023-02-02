import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/notifications_item.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificState();
}

class _NotificState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Notifications',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                CircleAvatar(
                  radius: 18,
                  child: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 24,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.155 *
                  notificList.length,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: notificList.length,
                  itemBuilder: (context, index) {
                    return notificItem(
                        context,
                        notificList[index].image,
                        notificList[index].actionIcon,
                        notificList[index].userName,
                        notificList[index].actionCategory,
                        notificList[index].time);
                  }),
            )
          ],
        ),
      ),
    );
  }
}