import 'package:counter_bloc_app/counter_cubit/cubit/counter_cubit.dart';
import 'package:counter_bloc_app/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            automaticallyImplyLeading: false,
            title: const Center(
              child: Text(
                "Counter App",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomFloatingButton(
                    function: () {
                      context.read<CounterCubit>().increament();
                    },
                    icon: Icons.add),
                Text(
                  "Counter : ${context.read<CounterCubit>().counter}",
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomFloatingButton(
                    function: () {
                      context.read<CounterCubit>().decreament();
                    },
                    icon: Icons.remove),
              ],
            ),
          ),
        );
      },
    );
  }
}
