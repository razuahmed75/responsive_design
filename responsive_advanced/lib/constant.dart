// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

var boxColor = Colors.grey[400];
var tileColor = Colors.white;
var myDefalutBackground = Colors.grey[300];
var myAppBar = AppBar(
  title: Text("M O B I L E"),
  centerTitle: true,
  backgroundColor: Colors.grey[900],
);
var myDrawer = Drawer(
  backgroundColor: myDefalutBackground,
  child: Column(
    children: [
      DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(
        onTap: () {},
        leading: Icon(Icons.home),
        title: Text("D A S H B O A R D"),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(Icons.chat),
        title: Text("M E S S A G E"),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(Icons.settings),
        title: Text("S E T T I N G S"),
      ),
      ListTile(
        onTap: () {},
        leading: Icon(Icons.logout),
        title: Text("L O G O U T"),
      ),
    ],
  ),
);
