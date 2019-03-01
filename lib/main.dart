import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_bloc/src/blocs/counter_bloc.dart';
import 'package:flutter_counter_bloc/src/widgets/counter_page.dart';

void main() => runApp(App());


class App extends StatefulWidget {
  final Widget child;

  App({Key key, this.child}) : super(key: key);

  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final CounterBloc _counterbloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Bloc Counter",
      home: BlocProvider<CounterBloc>(bloc:_counterbloc, child: CounterPage()),
    );
  }

  @override
  void dispose() {
    _counterbloc.dispose();
    super.dispose();
  }
}