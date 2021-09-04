
import 'package:bottomnavigationbar/custom/hexcolor.dart';
import 'package:bottomnavigationbar/screens/appbar/custom_app_bar.dart';
import 'package:bottomnavigationbar/screens/bottomnavigationbar/budget.dart';
import 'package:bottomnavigationbar/screens/bottomnavigationbar/profile.dart';
import 'package:bottomnavigationbar/screens/bottomnavigationbar/transaction.dart';
import 'package:bottomnavigationbar/screens/navigationbutton/navigation_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottomnavigationbar/home.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentTab = 0;

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            PageStorage(bucket: bucket, child: currentScreen )
          ],
        ),
      ),
      //
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add,),
          backgroundColor: Color(hexColor("#7F3DFF")),
          onPressed: (){

          },
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 79,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Right Bottom Bar
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Home
                  MaterialButton(
                    minWidth: 40,
                      onPressed: (){
                      setState(() {
                        // init screen
                        _currentTab = 0;
                        currentScreen = Home();
                      });
                      },
                    child: navigationButtonImage(_currentTab, 0, 'Home', 'assets/images/navigation/home.png', 'assets/images/navigation/home_.png'),
                  ),
                  // Transaction
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        // init screen
                        _currentTab = 1;
                        currentScreen = Transaction();
                      });
                    },
                    child: navigationButtonImage(_currentTab, 1, 'Transaction', 'assets/images/navigation/transaction.png', 'assets/images/navigation/transaction_.png'),
                  )
                ],
              ),
              // Left Bottom Bar
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        // init screen
                        _currentTab = 2;
                        currentScreen = Budget();
                      });
                    },
                    child: navigationButtonImage(_currentTab, 2, 'Budget', 'assets/images/navigation/budget.png', 'assets/images/navigation/budget_.png'),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        // init screen
                        _currentTab = 3;
                        currentScreen = Profile();
                      });
                    },
                    child: navigationButtonImage(_currentTab, 3, 'Profile', 'assets/images/navigation/user.png', 'assets/images/navigation/user_.png'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
