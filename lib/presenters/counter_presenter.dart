import 'package:tarea_20_11_2023/interactors/counter_interactor.dart';

class CounterPresenter {
  final CounterInteractor _interactor;

  CounterPresenter(this._interactor);

  String get counterValue => _interactor.counter.value.toString();

  void incrementCounter(){
    _interactor.incrementCounter();
  }
  void decrementCounter(){
    _interactor.decrementCounter();
  }
}
