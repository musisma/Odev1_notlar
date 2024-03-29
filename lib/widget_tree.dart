import 'package:island_chat/login_register_page.dart';
import 'package:flutter/material.dart';
import 'package:island_chat/auth.dart';
import 'package:island_chat/island_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree>{
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData){
          return IslandPage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
