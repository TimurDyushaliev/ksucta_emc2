import 'package:emc/constants/secrets.dart';
import 'package:emc/controllers/pin_code_controller.dart';
import 'package:emc/view/pages/home_page.dart';
import 'package:emc/view/widgets/pin_code_numbers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PinCodePage extends StatelessWidget {
  final PinCodeController pinCodeController = Get.put(PinCodeController());

  List<bool> get isPinCodeEdited => pinCodeController.isPinCodeEdited;
  String get value => pinCodeController.code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Пин-код',
                    textScaleFactor: 1,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      4,
                      (index) => Obx(
                        () => Container(
                          height: 28,
                          width: 28,
                          margin: EdgeInsets.symmetric(
                            horizontal: Get.size.width * 0.03,
                          ),
                          decoration: BoxDecoration(
                            color: isPinCodeEdited[index]
                                ? Colors.green
                                : Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.black.withOpacity(0.12)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            PinCodeNumbers(
              onNumberPressed: (number) {
                pinCodeController.increase(number.toString());
                if (value == Secrets.pinCodeValue) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => HomePage(),
                    ),
                  );
                }
              },
              onBackspacePressed: pinCodeController.decrease,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
