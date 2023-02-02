import 'package:facebook_ui/items/friends_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Friends',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
                CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                    child:
                    Icon(Icons.search,size: 35, color: Colors.black,)
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )),
                    child: Text('Requests',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ),),
                ),
                SizedBox(width: 10,),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade300,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      )),
                  child: Text('Your Friends',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),),
                ),
              ],
            ),
            SizedBox(height: 12,),
             Text('People You May Know',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  fontWeight: FontWeight.w500
                ),),
            ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: friendslist.length,
                itemBuilder: (context, index){
                  return FriendsItem(
                      context,
                      friendslist[index].userImage,
                      friendslist[index].userName,
                      friendslist[index].userFriends);
                })
          ],
        ),
      ),
    );
  }
}
