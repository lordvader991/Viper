import 'package:tarea_20_11_2023/entities/counter_entity.dart';

class CounterInteractor {
  CounterEntity _counter = CounterEntity(0);

  CounterEntity get counter => _counter;

  void incrementCounter() {
    _counter.value++;
  }
  void decrementCounter() {
    _counter.value--;
  }
}
