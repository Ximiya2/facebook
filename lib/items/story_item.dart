import 'package:facebook_ui/model/story_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../state.dart';

Widget storyItem(BuildContext context, StoryModel story) {
  return  story != storyList[0] ? Container(
    margin: const EdgeInsets.only(right: 10),
    height: 180,
    width: MediaQuery.of(context).size.width * 0.28,
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage(story.storyImage), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(.6),
            Colors.black.withOpacity(.6),
          ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blue, width: 1.5),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(story.userImage),
            ),
          ),
          Text(
            story.name,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    ),
  ) :
  Stack(
    children: [
      Container(
        height: 180,
        width: MediaQuery.of(context).size.width * 0.28,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.black, width: .5),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      Positioned(
          child: Container(
            margin: const EdgeInsets.only(right: 10),
            height: 130,
            width: MediaQuery.of(context).size.width * 0.28,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(story.storyImage), fit: BoxFit.cover),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15),),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(.5),
                    Colors.black.withOpacity(.5),
                  ])),
            ),
          ),
      ),
      Positioned(
        bottom: 32,
          right: 42,
          child: CircleAvatar(child: Icon(Icons.add, color: Colors.white, size: 30,))),
      Positioned(
        bottom: 10,
        left: 15,
        child: Text(
          story.name,
          style: const TextStyle(color: Colors.black),
        ),
      )
    ]
  );

}
