import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        title: Text(widget.title),
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
            )),
        actions: const [
          Icon(Icons.search),
          Icon(Icons.filter_list_rounded),
        ],
        floating: true,
        snap: true,
        //pinned : bool
      ),
      SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => BuildCards(index, "Sliver app bar"),
              childCount: 50)),
    ]));
    // ListView.separated(
    //   itemBuilder: (context, index) => BuildCards(index),
    //   separatorBuilder: (context, index) => const SizedBox(
    //     height: 10,
    //   ),
    //   itemCount: 50,
    // )));
  }
}

class BuildCards extends StatelessWidget {
  BuildCards(this.index, this.msg);
  int index;
  var msg;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: Card(
          child: Text(" $msg -- $index"),
        ));
  }
}
