import 'package:flutter/material.dart';
import 'package:tarea_20_11_2023/presenters/counter_presenter.dart';

class CounterView extends StatefulWidget {
    final CounterPresenter presenter;

    const CounterView({Key? key, required this.presenter}) : super(key: key);

    @override
    _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                title: const Text('Flutter Demo'),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        const Text(
                            'You have pushed the button this many times:',
                        ),
                        Text(
                            widget.presenter.counterValue,
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                    ElevatedButton(
                                        onPressed: () {
                                            setState(() {
                                                widget.presenter.incrementCounter();
                                            });
                                        },
                                        child: const Text('Increment'),
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                            foregroundColor: Colors.white,
                                        ),
                                    ),
                                    const SizedBox(width: 10),
                                    ElevatedButton(
                                        onPressed: () {
                                            setState(() {
                                                widget.presenter.decrementCounter();
                                            });
                                        },
                                        child: const Text('Decrement'),
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.red,
                                            foregroundColor: Colors.white,
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}
