import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tap_app/core/extensions/all_extensions.dart';
import 'package:tap_app/core/utils/extentions.dart';
import 'package:tap_app/shared/widgets/button_widget.dart';

import '../../../../../../core/Router/page_name.dart';
import '../../../../../../core/app_strings/locale_keys.dart';
import '../../../../../../core/resources/gen/assets.gen.dart';
import '../../../../../../shared/widgets/edit_text_widget.dart';

class LoginBottomSheetWidget extends StatefulWidget {
  const LoginBottomSheetWidget({Key? key}) : super(key: key);

  @override
  State<LoginBottomSheetWidget> createState() => _LoginBottomSheetWidgetState();
}

class _LoginBottomSheetWidgetState extends State<LoginBottomSheetWidget> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xffFAF9FA),
                radius: 20,
                child: Center(
                  child: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ).paddingHorizontal(
                16,
              )
            ],
          ),
          16.ph,
          Text(
            LocaleKeys.auth_welcome_back.tr(),
            style: context.headlineMedium?.copyWith(fontSize: 18),
          ),
          16.ph,

          Text(
            LocaleKeys.auth_tap_into_world.tr(),
            textAlign: TextAlign.center,
            style: context.displayMedium?.copyWith(
              fontSize: 12,
            ),
          ),
          16.ph,
          TextFormFieldWidget(
            label: LocaleKeys.auth_email_address.tr(),
            activeBorderColor: Color(0xffEDEBEF),
            prefixIcon: Assets.icons.email.path,
            hintText: LocaleKeys.auth_email_address.tr(),
            controller: emailController,
          ),
          // 16.ph,
          TextFormFieldWidget(
            label: LocaleKeys.auth_Password.tr(),
            activeBorderColor: Color(0xffEDEBEF),
            prefixIcon: Assets.icons.lock.path,
            hintText: LocaleKeys.auth_Password.tr(),
            controller: passwordController,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButtonWidget(
                function: () {},
                text: LocaleKeys.auth_forgot_password.tr(),
                color: context.midnight7,
              ),
            ],
          ),
          16.ph,
          ButtonWidget(
            title: LocaleKeys.auth_Login.tr(),
            onTap: () {
              // bottomNavNotifier.value = 0;
              // AppRoutes.home.go(context);
            },
          ),
          16.ph,
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xffFAF9FA),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Image.asset(Assets.icons.googel.path),
                  ),
                ),
              ),
              16.pw,
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xffFAF9FA),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  // color: Color(0xffFAF9FA),
                  child: Center(
                    child: Image.asset(Assets.icons.facebook.path),
                  ),
                ),
              ),
              16.pw,
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xffFAF9FA),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  // color: Color(0xffFAF9FA),
                  child: Center(
                    child: Assets.icons.pLogin.svg(),
                  ),
                ),
              ),
            ],
          ),
          16.ph,

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                LocaleKeys.auth_have_no_account.tr(),
                style: context.displayMedium?.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: context.midnight1,
                  // color: Color(0xffFAF9FA),
                ),
              ),
              4.pw,
              InkWell(
                onTap: () {},
                child: Text(
                  LocaleKeys.auth_Login.tr(),
                  style: context.displayMedium?.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: context.midnight1,
                  ),
                ),
              ),
            ],
          ),
          16.ph,
        ],
      ),
    );
  }
}
