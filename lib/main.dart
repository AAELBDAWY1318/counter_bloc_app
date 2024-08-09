import 'package:counter_bloc_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});
  //comment to test commit 

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
