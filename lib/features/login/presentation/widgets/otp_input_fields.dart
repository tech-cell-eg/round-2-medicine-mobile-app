import 'package:flutter/material.dart';
import 'package:medical_store/core/constants/app_colors.dart';

class OTPInputFields extends StatefulWidget {
  const OTPInputFields({super.key});

  @override
  OTPInputFieldsState createState() => OTPInputFieldsState();
}

class OTPInputFieldsState extends State<OTPInputFields> {
  final int otpLength = 6;
  late List<TextEditingController> controllers;
  late List<FocusNode> focusNodes;

  @override
  void initState() {
    super.initState();
    controllers = List.generate(otpLength, (_) => TextEditingController());
    focusNodes = List.generate(otpLength, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _onTextChanged(String value, int index) {
    if (value.isNotEmpty && index < otpLength - 1) {
      FocusScope.of(context).requestFocus(focusNodes[index + 1]);
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(focusNodes[index - 1]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(otpLength, (index) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: TextField(
              controller: controllers[index],
              focusNode: focusNodes[index],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              maxLength: 1,
              textInputAction:
                  isLastIndex(index)
                      ? TextInputAction.done
                      : TextInputAction.next,
              style: const TextStyle(fontSize: 24, color: AppColors.textColor),
              decoration: InputDecoration(
                counterText: "",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.subTitleColor,
                    width: 2,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 2.5),
                ),
              ),
              onChanged: (value) => _onTextChanged(value, index),
            ),
          ),
        );
      }),
    );
  }

  bool isLastIndex(int index) {
    return index == otpLength - 1;
  }
}
