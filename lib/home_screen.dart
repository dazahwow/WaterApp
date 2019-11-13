import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(156, 171, 229, 1),
        title: Text(
          'Home',
          textAlign: TextAlign.center,
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.calendar_today,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromRGBO(64, 76, 120, 1),
              Color.fromRGBO(156, 171, 229, 1),
            ],
          ),
        ),
        child: Column(
         
          children: <Widget>[
            Image.asset(
              'assets/WaterDropletMain.png',
            ),
            FloatingActionButton(
              child: IconButton(
                icon: Icon(
                  Icons.add,
                  color: Color.fromRGBO(64, 76, 120, 1),
                ),
                
              ),

              backgroundColor: Colors.white,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('History'),
            icon: Icon(
              Icons.history,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('Settings'),
            icon: Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
    );
  }
}
