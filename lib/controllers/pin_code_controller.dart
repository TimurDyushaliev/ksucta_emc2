import 'package:get/get.dart';

class PinCodeController extends GetxController {
  RxList<bool> isPinCodeEdited = <bool>[false, false, false, false].obs;
  String code = '';

  void increase(String value) {
    if (this.code.length < 4) {
      code += value;
    }
    if (!isPinCodeEdited[0]) {
      isPinCodeEdited[0] = true;
      return;
    }
    if (!isPinCodeEdited[1]) {
      isPinCodeEdited[1] = true;
      return;
    }
    if (!isPinCodeEdited[2]) {
      isPinCodeEdited[2] = true;
      return;
    }
    if (!isPinCodeEdited[3]) {
      isPinCodeEdited[3] = true;
      return;
    }
  }

  void decrease() {
    if (code.length > 0) {
      code = code.substring(0, code.length - 1);
    }
    if (isPinCodeEdited[3]) {
      isPinCodeEdited[3] = false;
      return;
    }
    if (isPinCodeEdited[2]) {
      isPinCodeEdited[2] = false;
      return;
    }
    if (isPinCodeEdited[1]) {
      isPinCodeEdited[1] = false;
      return;
    }
    if (isPinCodeEdited[0]) {
      isPinCodeEdited[0] = false;
      return;
    }
  }
}
