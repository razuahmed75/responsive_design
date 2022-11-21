// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/util/myTile.dart';
import 'package:flutter_application_1/util/mybox.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myDefalutBackground,
        appBar: myAppBar,
        drawer: myDrawer,
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 2 / 2,
              /* width hbe 2Gun & height o hbe 2Gun*/
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
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
      ),
    );
  }
}
