import 'package:flutter/material.dart';
import 'package:valkyrie_system/constant/view_constant.dart';

class LabelS extends StatelessWidget {
  const LabelS({Key? key, required this.labelText}) : super(key: key);

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 5),
        child: Text(
          labelText,
          textScaleFactor: 1,
          style: TextStyle(
              fontSize: ViewConstant.deviceWidth * 0.04,
              fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}
