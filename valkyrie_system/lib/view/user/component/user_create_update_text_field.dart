import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_system/constant/view_constant.dart';

class UserCreateUpdateTextField extends HookWidget {
  const UserCreateUpdateTextField({Key? key, required this.controller, this.isReadOnly = false, this.isRequired = false, this.boxHeight, this.minLength, this.maxLength, this.maxLine = 1, this.helperText, this.paddingTop, this.paddingBottom, this.textInputAction = TextInputAction.done}) : super(key: key);

  final TextEditingController controller;
  final bool isReadOnly;
  final bool isRequired;
  final double? boxHeight;
  final String? helperText;
  final double? paddingTop;
  final double? paddingBottom;
  final int? minLength;
  final int? maxLength;
  final int? maxLine;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {

    // デザイン
    InputDecoration decoration() {
      return InputDecoration(
          contentPadding: EdgeInsets.only(left: ViewConstant.deviceWidth * 0.04, top: paddingTop ?? 0.0, bottom: paddingBottom ?? 0.0),
          helperText: helperText ?? '',
          errorText: null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blueGrey, width: 2),
            borderRadius: BorderRadius.circular(15),
          )
      );
    }

    bool validateIsNullOrEmpty(String? value) {
      if (value == null || value.isEmpty) {
        return true;
      }
      return false;
    }

    bool validateIsOverCharacterLength(String value, {required int maxLength}) {
      if (value.length > maxLength) {
        return true;
      }
      return false;
    }

    bool validateIsLessCharacterLength(String value, {required int minLength}) {
      if (value.length < minLength) {
        return true;
      }
      return false;
    }

    return SizedBox(
      height: boxHeight ?? ViewConstant.deviceWidth * 0.15,
      child: TextFormField(
        controller: controller,
        readOnly: isReadOnly,
        enabled: !isReadOnly,
        decoration: decoration(),
        textInputAction: textInputAction,
        maxLines: maxLine,
        validator: (value) {
          if (isRequired && validateIsNullOrEmpty(value)) {
            //errorText.value = '必須入力';
            return '必須入力';
          }
          if (minLength != null && validateIsLessCharacterLength(value!, minLength: minLength!)) {
            //errorText.value = '$minLength文字以上で入力してください';
            return '$minLength文字以上で入力してください';
          }
          if (maxLength != null && validateIsOverCharacterLength(value!, maxLength: maxLength!)) {
            //errorText.value = '$maxLength文字以内で入力してください';
            return '$maxLength文字以内で入力してください';
          }
          //errorText.value = null;
          return null;
        },
      ),
    );
  }
}
