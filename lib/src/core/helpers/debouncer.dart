import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

EventTransformer<MyEvent> debounce<MyEvent>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).switchMap(mapper);
}
