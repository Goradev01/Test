// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

import 'Homepage.dart';

class tab extends StatefulWidget {
  @override
  State<tab> createState() => _tabState();
}

class _tabState extends State<tab> {
  int tabno = 0;
  Widget _buildMiddleTabItem() {
    return Expanded(
      child: SizedBox(
        height: 60,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 24),
            Text(''),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var tabpage = <Widget>[
      Center(
        child: HomePage(),
      ),
      Center(
        child: HomePage(),
      ),
      Center(
        child: HomePage(),
      ),
      Center(child: HomePage()),
    ];
    final tabitem = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Diagnosis',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Articles',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.add_circle),
        label: 'Profile',
      ),
    ];
    assert(tabpage.length == tabitem.length);
    final bottomNav = BottomNavigationBar(
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black,
      unselectedLabelStyle: TextStyle(color: Colors.black),
      backgroundColor: Color(0xfff4e2ee),
      elevation: 0,
      items: tabitem,
      type: BottomNavigationBarType.fixed,
      currentIndex: tabno,
      // type: CircularNotchedRectangle(),
      onTap: (int index) {
        setState(() {
          tabno = index;
        });
      },
    );

    return Scaffold(
        // backgroundColor: Colors.black,
        body: IndexedStack(
          index: tabno,
          children: [
            Center(
              child: HomePage(),
            ),
            Center(
              child: HomePage(),
            ),
            Center(
              child: HomePage(),
            ),
            Center(
              child: HomePage(),
            ),
            Center(
              child: HomePage(),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color(0xfff4e2ee),
          // color: Color.fromARGB(255, 206, 25, 146),
          child: Container(
            height: 70,
            // decoration: BoxDecoration(color: Color(0xfff4e2ee)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            tabno = 0;
                          });
                        },
                        icon: Icon(Icons.home,
                            color: (tabno == 0) ? Colors.blue : Colors.black)),
                    Text('Home',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: (tabno == 0) ? Colors.blue : Colors.black)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            tabno = 1;
                          });
                        },
                        icon: Icon(Icons.favorite,
                            color: (tabno == 1) ? Colors.blue : Colors.black)),
                    Text('Diagnosis',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: (tabno == 1) ? Colors.blue : Colors.black)),
                  ],
                ),
                SizedBox(width: 70),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            tabno = 2;
                          });
                        },
                        icon: Icon(Icons.article,
                            color: (tabno == 2) ? Colors.blue : Colors.black)),
                    Text('Articles',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: (tabno == 2) ? Colors.blue : Colors.black)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            tabno = 3;
                          });
                        },
                        icon: Icon(Icons.supervisor_account,
                            color: (tabno == 3) ? Colors.blue : Colors.black)),
                    Text('Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: (tabno == 3) ? Colors.blue : Colors.black)),
                  ],
                ),
              ],
            ),
          ),
          shape: CircularNotchedRectangle(),
          // notchMargin: 10,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Transform.translate(
          offset: Offset(0, -10),
          child: FloatingActionButton(
              child: Icon(Icons.add),
              foregroundColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 247, 125, 206),
              elevation: 2.0,
              onPressed: () {
                print('heloo world');
              }),
        ));
  }
}
