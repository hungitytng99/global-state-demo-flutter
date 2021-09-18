import 'dart:convert';
import 'package:property_change_notifier/property_change_notifier.dart';

class GlobalState{
  Map<String, dynamic> _state = {};

  Map<String, dynamic> get state => _state;
  set state(Map<String, dynamic> value) {
    _state = value;
  }

  @override
  String toString() {
    return json.encode(_state);
  }

}