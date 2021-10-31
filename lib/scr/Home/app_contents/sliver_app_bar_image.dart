import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sliver__appbar/helper/widgets_helper.dart';
import 'package:sliver__appbar/scr/Home/app_contents/sliver_appbar_with_list.dart';

class SliverAppbarImage extends StatelessWidget {
  const SliverAppbarImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          expandedHeight: 220.0,
          floating: true,
          pinned: true,
          snap: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: customText("Sliver Demo", 14, FontWeight.normal),

            //Image.network(
            //   "https://www.brevis.com/images/p173.jpg",
            //   fit: BoxFit.cover,
            // ),
          )),
      SliverList(
          delegate: SliverChildBuilderDelegate(
        (context, index) => BuildCards(index, "With image list"),
        childCount: 20,
      )),
    ]));
  }
}
