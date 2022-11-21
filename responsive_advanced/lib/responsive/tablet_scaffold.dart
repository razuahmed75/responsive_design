// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';

import '../util/myTile.dart';
import '../util/mybox.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefalutBackground,
      appBar: AppBar(
        title: Text("T A B L E T"),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4 / 1,
            /* width hobe 4Gun & height hbe 1Gun */
            child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return MyBox();
                }),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    return MyTile();
                  }))),
        ],
      ),
    );
  }
}
