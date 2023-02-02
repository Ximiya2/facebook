import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/friends_model.dart';

  List<FriendsModel> friendslist = [
    FriendsModel(
        userName: 'Axram Sayidov',
        userImage: 'assets/image/ph10.jpg',
        userFriends: '38 mutual friends'
    ),
    FriendsModel(
        userName: 'Axram Sayidov',
        userImage: 'assets/image/ph10.jpg',
        userFriends: '38 mutual friends'
    ),
    FriendsModel(
        userName: 'Axram Sayidov',
        userImage: 'assets/image/ph10.jpg',
        userFriends: '38 mutual friends'
    ),
    FriendsModel(
        userName: 'Axram Sayidov',
        userImage: 'assets/image/ph10.jpg',
        userFriends: '38 mutual friends'
    ),
    FriendsModel(
        userName: 'Axram Sayidov',
        userImage: 'assets/image/ph10.jpg',
        userFriends: '38 mutual friends'
    ),
  ];

  @override
  Widget FriendsItem(
      BuildContext context,
      String image,
      String name,
      String friends,
      ) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            child: Image.asset(image),
          ),
          Column(
            children: [
               Text(name),
              Text(friends),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        )),
                    child: Text('Add Friend',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                      ),),
                  ),
                  SizedBox(width: 10,),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        )),
                    child: Text('Remove',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black
                      ),),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

