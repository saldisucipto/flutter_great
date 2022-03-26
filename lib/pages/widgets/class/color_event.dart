// ignore_for_file: constant_identifier_names

import 'dart:async';

import 'package:flutter/material.dart';

enum ColorEvenet { to_amber, to_light_blue }

class ColorBloc {
  var _color = Colors.amber;

  final StreamController<ColorEvenet> _eventController =
      StreamController<ColorEvenet>();
  // Stream Input
  StreamSink<ColorEvenet> get eventSink => _eventController.sink;

  final StreamController<Color> _stateController = StreamController<Color>();
  StreamSink<Color> get _stateSink => _stateController.sink;
  Stream<Color> get stateStream => _stateController.stream;

  void _mapEventToState(ColorEvenet colorEvenet) {
    if (colorEvenet == ColorEvenet.to_amber) {
      _color = Colors.amber;
    } else {
      _color = Colors.lightBlue;
    }
    _stateSink.add(_color);
  }

  ColorBloc() {
    _eventController.stream.listen(_mapEventToState);
  }

// free memory
  void dispose() {
    _eventController.close();
    _stateController.close();
  }
}
