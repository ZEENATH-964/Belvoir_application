import 'package:belvoir_app/User/UserView/Profile/userprofile.dart';
import 'package:belvoir_app/User/UserView/userhome/user_home.dart';
import 'package:belvoir_app/User/UserView/userrentel/user_rentel.dart';
import 'package:belvoir_app/User/UserView/usertiloring/user_tiloring.dart';
import 'package:belvoir_app/User/User_ViewModel/userbottomprovider/user_bottom_provider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserBottom extends StatelessWidget {
  UserBottom({super.key});

  final pages = [UserHome(), UserRentel(), UserTiloring(), Userprofile()];
  @override
  Widget build(BuildContext context) {
    final navProvider = Provider.of<UserBottomProvider>(context);
    return Scaffold(
      body: pages[navProvider.currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: navProvider.currentIndex,
        height: 60,
        backgroundColor: Colors.transparent,
        color: Colors.black,
        buttonBackgroundColor: Colors.black,
        animationDuration: const Duration(milliseconds: 300),
        animationCurve: Curves.easeInOut,

        onTap: (index) {
          navProvider.changeIndex(index);
        },
        items: [
          Icon(Icons.home, size: 28, color: Colors.white),
          Icon(Icons.checkroom, size: 28, color: Colors.white),
          Icon(Icons.content_cut, size: 28, color: Colors.white),
          Icon(Icons.person, size: 28, color: Colors.white),
        ],
      ),
    );
  }
}
