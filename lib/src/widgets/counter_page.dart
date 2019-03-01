import 'package:flutter/material.dart';
import 'package:flutter_counter_bloc/src/blocs/counter_bloc.dart';
import 'package:meta/meta.dart';

class CounterPage extends StatelessWidget {
  //final CounterBloc _counterBloc = CounterBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Page"),
      ),
    );
  }
}