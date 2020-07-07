import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent {to_green, to_blueaccent}

class ColorBloc extends Bloc<ColorEvent, Color>{
  Color _color = Colors.green;
  @override
  Color get initialState => Colors.green;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {

    _color = (event == ColorEvent.to_green)? Colors.green : Colors.blueAccent;
    yield _color;
  }

}