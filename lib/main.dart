import 'package:belvoir_app/User/UserView/Profile/userprofile.dart';

import 'package:belvoir_app/User/UserView/userbottom/user_bottom.dart';
import 'package:belvoir_app/User/User_ViewModel/userbottomprovider/user_bottom_provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserBottomProvider()),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: UserBottom()),
    );
  }
}
