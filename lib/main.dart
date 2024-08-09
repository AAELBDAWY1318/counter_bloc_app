import 'package:counter_bloc_app/counter_cubit/cubit/counter_cubit.dart';
import 'package:counter_bloc_app/counter_observer.dart';
import 'package:counter_bloc_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main(){
  // the following line to track the bloc states 
  Bloc.observer = const CounterObserver();
  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});
  //comment to test commit 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: const HomeScreen(),
      )
    );
  }
}
