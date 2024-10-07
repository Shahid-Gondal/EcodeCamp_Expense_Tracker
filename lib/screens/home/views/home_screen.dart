import 'dart:math';

import 'package:expense_tracker_app/screens/home/views/add_expense.dart';
import 'package:expense_tracker_app/screens/home/views/main_screen.dart';
import 'package:expense_tracker_app/screens/stats/stats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
 // late Colors selectedItem ;
 // Colors unSelectedItem =Colors.grey;

 // @override
 //  void initState() {
 //    selectedItem =Theme.of(context).colorScheme.primary
 //    super.initState();
 //  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        // ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                index = value;
              });

            },
            currentIndex: index,
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 3,
            items: [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home,),

                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.graph_square_fill,),
                label: "Stats",
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AddExpense(),));
          },
          shape: CircleBorder(),
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.tertiary,
                ],
                transform: GradientRotation(pi / 4),
              ),
            ),
            child: Icon(CupertinoIcons.add),
          ),
        ),
        body: index == 0 ? MainScreen() : StatsScreen());
  }
}
