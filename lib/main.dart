// lib/main.dart
import 'package:flutter/material.dart';
import 'package:tarea_20_11_2023/interactors/counter_interactor.dart';
import 'package:tarea_20_11_2023/presenters/counter_presenter.dart';
import 'package:tarea_20_11_2023/views/counter_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final CounterView _counterView;

  @override
  void initState() {
    super.initState();
    final interactor = CounterInteractor();
    final presenter = CounterPresenter(interactor);
    _counterView = CounterView(presenter: presenter);
  }

  @override
  Widget build(BuildContext context) {
    return _counterView;
  }
}
