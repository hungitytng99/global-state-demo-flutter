import 'dart:developer' as developer;

class StateListners {
  void log([dynamic value = "", String name = ""]) {
    developer.log(value, name: name);
  }
}
