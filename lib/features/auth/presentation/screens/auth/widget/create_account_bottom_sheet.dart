import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tap_app/core/app_strings/locale_keys.dart';
import 'package:tap_app/core/extensions/all_extensions.dart';
import 'package:tap_app/core/resources/gen/assets.gen.dart';
import 'package:tap_app/core/utils/extentions.dart';
import 'package:tap_app/shared/widgets/edit_text_widget.dart';

import '../../../../../../shared/widgets/button_widget.dart';

class CreateAccountBottomSheet extends StatefulWidget {
  const CreateAccountBottomSheet({super.key});

  @override
  State<CreateAccountBottomSheet> createState() =>
      _CreateAccountBottomSheetState();
}

class _CreateAccountBottomSheetState extends State<CreateAccountBottomSheet> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // PageController pageController = PageController();
  @override
  void initState() {
    // TODO: implement initState
    // pageController.keepPage == true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      /// This is the bottom padding for the keyboard
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
            LocaleKeys.auth_get_Started_with_Tiktap.tr(),
            style: context.headlineMedium?.copyWith(fontSize: 18),
          ),
          16.ph,

          Text(
            LocaleKeys.auth_description_login.tr(),
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
          16.ph,
          Card(
            color: context.midnight4,
            elevation: 15,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: ButtonWidget(
              onTap: () {},
              title: LocaleKeys.auth_create_account.tr(),
            ),
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
            ],
          ),
          16.ph,

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                LocaleKeys.auth_By_creating_an_account.tr(),
                style: context.displayMedium
                    ?.copyWith(fontSize: 12, fontWeight: FontWeight.w400
                        // color: Color(0xffFAF9FA),
                        ),
              ),
              4.pw,
              InkWell(
                onTap: () {},
                child: Text(
                  LocaleKeys.auth_terms_and_condition.tr(),
                  style: context.displayMedium?.copyWith(
                      fontSize: 12,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w600
                      // color: Color(0xffFAF9FA),
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
                LocaleKeys.auth_have_an_account.tr(),
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
                  LocaleKeys.auth_create_account.tr(),
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
