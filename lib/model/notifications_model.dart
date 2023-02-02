import 'package:flutter/cupertino.dart';

class NotificationsModel {
  String image;
  String userName;
  String actionCategory;
  String time;
  Icon actionIcon;
  NotificationsModel(
      {required this.image,
        required this.userName,
        required this.actionCategory,
        required this.time,
        required this.actionIcon});
}