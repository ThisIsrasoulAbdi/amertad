import 'package:amertad/view/home/view/FirstView/first_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {},
              icon: IconButton(
                  onPressed: () {}, icon: Icon(CupertinoIcons.left_chevron))),
          SizedBox(
            width: 32,
          ),
          Expanded(
            child: Text(
              'Message',
              style:
                  Theme.of(context).textTheme.headline6!.copyWith(fontSize: 22),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: IconButton(
                  onPressed: () {}, icon: Icon(CupertinoIcons.search)))
        ],
      )),
      body: Container(
        margin: EdgeInsets.only(top: 32),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          DefaultTabController(
              length: 3, // length of tabs
              initialIndex: 0,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: TabBar(
                        labelColor: Colors.blue.shade700,
                        unselectedLabelColor: Colors.grey.shade500,
                        tabs: [
                          Tab(icon: Icon(Icons.chat_bubble_rounded)),
                          Tab(icon: Icon(CupertinoIcons.bag_fill)),
                          Tab(icon: Icon(CupertinoIcons.car)),
                        ],
                      ),
                    ),
                    Container(
                      height: 700,
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(color: Colors.grey, width: 0.5))),
                      child: TabBarView(
                        children: [
                          FirstView(),
                          FirstView(),
                          FirstView(),
                        ],
                      ),
                    )
                  ])),
        ]),
      ),
    );
  }
}
