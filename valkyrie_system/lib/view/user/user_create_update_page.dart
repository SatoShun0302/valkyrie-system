import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_system/constant/view_constant.dart';
import 'package:valkyrie_system/view/common/label_s.dart';
import 'package:valkyrie_system/view/user/component/user_create_update_text_field.dart';

class UserCreatePage extends HookWidget {
  const UserCreatePage({Key? key, this.isUpdate = false}) : super(key: key);
  final bool isUpdate;

  @override
  Widget build(BuildContext context) {
    final formKey = useState<GlobalKey<FormState>>(GlobalKey<FormState>());
    var userIdController = useState<TextEditingController>(TextEditingController());
    var userNameController = useState<TextEditingController>(TextEditingController());
    var userIntroductionController = useState<TextEditingController>(TextEditingController());
    var psIdController = useState<TextEditingController>(TextEditingController());
    var xboxIdController = useState<TextEditingController>(TextEditingController());
    var switchIdController = useState<TextEditingController>(TextEditingController());
    var steamIdController = useState<TextEditingController>(TextEditingController());
    var discordIdController = useState<TextEditingController>(TextEditingController());
    var twitterIdController = useState<TextEditingController>(TextEditingController());
    var youtubeIdController = useState<TextEditingController>(TextEditingController());
    var twitchIdController = useState<TextEditingController>(TextEditingController());

    return Scaffold(
      resizeToAvoidBottomInset: true, // keyboardを表示した際のoverflowを防ぐ
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Center(
              child: SizedBox(
                width: ViewConstant.pageWidth,
                child: Form(
                  key: formKey.value,
                  child: Column(
                    children: [
                      const LabelS(labelText: "ユーザーID"),
                      UserCreateUpdateTextField(
                        controller: userIdController.value,
                          isRequired: true,
                          isReadOnly: isUpdate,
                          minLength: 5,
                          maxLength: 20,
                          helperText: '必須 / 他ユーザーとの重複不可',
                          textInputAction: TextInputAction.next),
                      const LabelS(labelText: "ユーザー名"),
                      UserCreateUpdateTextField(
                        controller: userNameController.value,
                          isRequired: true,
                          minLength: 5,
                          maxLength: 20,
                          helperText: '必須',
                          textInputAction: TextInputAction.next),
                      const LabelS(labelText: "自己紹介"),
                      UserCreateUpdateTextField(
                        controller: userIntroductionController.value,
                        minLength: 5,
                        maxLength: 20,
                        boxHeight: ViewConstant.deviceWidth * 0.3,
                        paddingTop: ViewConstant.deviceWidth * 0.03,
                        maxLine: 5,
                      ),
                      const LabelS(labelText: "PS Id"),
                      UserCreateUpdateTextField(
                        controller: psIdController.value,
                      ),
                      const LabelS(labelText: "Xbox Id"),
                      UserCreateUpdateTextField(
                        controller: xboxIdController.value,
                      ),
                      const LabelS(labelText: "Switch Id"),
                      UserCreateUpdateTextField(
                        controller: switchIdController.value,
                      ),
                      const LabelS(labelText: "Steam Id"),
                      UserCreateUpdateTextField(
                        controller: steamIdController.value,
                      ),
                      const LabelS(labelText: "discord Id"),
                      UserCreateUpdateTextField(
                        controller: discordIdController.value,
                      ),
                      const LabelS(labelText: "twitter Id"),
                      UserCreateUpdateTextField(
                        controller: twitterIdController.value,
                      ),
                      const LabelS(labelText: "youtube channel"),
                      UserCreateUpdateTextField(
                        controller: youtubeIdController.value,
                      ),
                      const LabelS(labelText: "twitch"),
                      UserCreateUpdateTextField(
                        controller: twitchIdController.value,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            // ボタン押下時はTextFormFieldへのfocusを解除する
                            FocusScope.of(context).unfocus();
                            // バリデーション結果 エラーがある場合はfalse, ない場合はtrueとなる
                            bool result = formKey.value.currentState!.validate();
                            if (result) {
                              if (isUpdate) {
                                // 更新処理の場合、入力内容に変更があるかをチェックする
                                // 変更がある場合は更新処理を実行、更新がない場合は処理は行わずに前画面へ戻る
                              } else {
                                // 登録処理の場合、データベース登録時にユーザーIDの重複がなければ正常登録となる
                                // ユーザーIDの重複があった場合、メッセージを表示し再入力を要求する
                              }

                            }

                          },
                          child: isUpdate ? const Text('更新') : const Text('登録')),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}