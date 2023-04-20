import 'package:flutter/material.dart';
import 'package:valkyrie_system/constant/view_constant.dart';

class LabelM extends StatelessWidget {
  const LabelM({Key? key, required this.labelText}) : super(key: key);

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
          labelText,
        textScaleFactor: 1,
        style: TextStyle(
          fontSize: ViewConstant.deviceWidth * 0.05,
          fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}
