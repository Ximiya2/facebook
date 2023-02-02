import 'package:facebook_ui/items/post_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/story_item.dart';
import '../state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //DefaultTabController(
              // length: 3,
              // child: NestedScrollView(
              //   headerSliverBuilder: (context, _){
              //     return [
              //       SliverList(
              //           delegate: SliverChildListDelegate([
              //
              //           ]))
              //     ];
              //   },
              //   body: Column(
              //     children: [
              //       Material(
              //         color: Colors.white,
              //         child: TabBar(
              //           labelColor: Colors.black,
              //           unselectedLabelColor: Colors.grey[400],
              //           indicatorWeight: 1,
              //           indicatorColor: Colors.black,
              //           tabs: [
              //             Tab(
              //                 icon:
              //                 Icon(Icons.home, color: Colors.black,)
              //             ),
              //             Tab(
              //                 icon:
              //                 Icon(Icons.people, color: Colors.black,)
              //             ),
              //             Tab(
              //                 icon:
              //                 Icon(Icons.notifications, color: Colors.black,)
              //             ),
              //           ],
              //         ),
              //       ),
              //       Expanded(
              //         child: TabBarView(
              //         children: [
              //           // Gallery(),
              //           // Friends_page(),
              //           // Reels(),
              //         ],
              //       ),
              //       ),
              //     ],
              //   ),
              //),
            //),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const SizedBox(
                    width: 10,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/photoIlmhub.jpg'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'What\`s on your mind?',
                          contentPadding: const EdgeInsets.only(left: 15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                      ),
                  ),
                  const SizedBox(
                    width: 15,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 10),
              width: MediaQuery.of(context).size.width,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Row(
                          children: [
                            Icon(Icons.video_call,
                            color: Colors.red,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text('Live')
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                    ),
                    VerticalDivider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                    Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text('Photo')
                          ],
                        ),
                    ),
                    VerticalDivider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text('Check in')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 5,
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: storyList.length,
                  itemBuilder: (context, index){
                  return storyItem(
                    context,
                    storyList[index]
                  );
                  }),
            ),
            Divider(
              thickness: 5,
            ),
            ListView.builder(
              itemCount: postList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index){
                  return postItem(
                      context,
                      postList[index],
                          () {
                            postList[index].isLiked = !postList[index].isLiked;
                            setState(() { });
                          });
                })
          ],
        ),
      ),
    );
  }
}
