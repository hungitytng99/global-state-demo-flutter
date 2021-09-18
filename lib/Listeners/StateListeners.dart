import 'dart:developer' as developer;

class StateListeners {
  void log([dynamic value = "", String name = ""]) {
    developer.log(value, name: name);
  }
}
