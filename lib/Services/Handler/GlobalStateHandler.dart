import 'package:block_design/Listners/StateListners.dart';
import 'package:block_design/Services/Data/GlobalState.dart';
import 'dart:convert';

class GlobalStateHandler {
  StateListners stateListners = new StateListners();
  GlobalState globalState = new GlobalState();

  dynamic getState(String key) {
    return globalState.state[key];
  }

  dynamic addState(String key, var value) {
    globalState.state = { ...globalState.state, key:value};
    return value;
  }

  void updateState(String key, var value, Function resetWidget) {
    bool hasChangeState = compareState(globalState.state[key], value);
    if (hasChangeState) {
      stateListners.log("Your state has been change: ");
      stateListners.log(globalState.toString(), "OLD STATE");
      addState(key, value);
      stateListners.log(globalState.toString(), "NEW STATE");
      resetWidget(() {});
    }
  }

  void removeState(String key) {
    globalState.state.remove(key);
  }

  bool compareState(oldStateValue, newStateValue) {
    return json.encode(oldStateValue) != json.encode(newStateValue);
  }
}
