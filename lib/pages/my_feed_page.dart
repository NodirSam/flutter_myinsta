import 'package:flutter/material.dart';

import '../model/post_model.dart';

class MyFeedPage extends StatefulWidget {
  const MyFeedPage({Key? key}) : super(key: key);

  @override
  State<MyFeedPage> createState() => _MyFeedPageState();
}

class _MyFeedPageState extends State<MyFeedPage> {

  List<Post> items = [];
  String post_img1 = "https://firebasestorage.googleapis.com/v0/b/koreanguideway.appspot.com/o/develop%2Fpost.png?alt=media&token=f0b1ba56-4bf4-4df2-9f43-6b8665cdc964";
  String post_img2 = "https://firebasestorage.googleapis.com/v0/b/koreanguideway.appspot.com/o/develop%2Fpost2.png?alt=media&token=ac0c131a-4e9e-40c0-a75a-88e586b28b72";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items.add(Post(postImage: post_img1, caption: "Discover more great images on our sponsor's site"));
    items.add(Post(postImage: post_img2, caption: "Discover more great images on our sponsor's site"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (ctx, index){
          return _itemOfPost(items[index]);
        },
      )
    );
  }

  Widget _itemOfPost(Post post){
    return Container(
      margin: const EdgeInsets.only(bottom: 1),
      height: 100,
    );
  }

}
