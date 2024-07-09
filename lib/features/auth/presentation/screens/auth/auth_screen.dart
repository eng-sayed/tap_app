import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:tap_app/core/app_strings/locale_keys.dart';
import 'package:tap_app/core/extensions/all_extensions.dart';
import 'package:tap_app/core/extensions/context_extensions.dart';
import 'package:tap_app/core/resources/dimansion_manager.dart';
import 'package:tap_app/core/resources/gen/assets.gen.dart';
import 'package:tap_app/core/services/alerts.dart';
import 'package:tap_app/core/utils/extentions.dart';
import 'package:tap_app/features/auth/presentation/screens/auth/widget/create_account_bottom_sheet.dart';
import 'package:tap_app/features/auth/presentation/screens/auth/widget/login_bottom_sheet.dart';
import 'package:tap_app/shared/widgets/customtext.dart';

import '../../../../../shared/widgets/button_widget.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Assets.icons.logoW.svg(width: 100),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/language.svg"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppSize.s16, vertical: AppSize.s16),
            child: Column(
              children: [
                36.ph,
                Lottie.asset("assets/json/on_boarding_lottie.json",
                    repeat: false),
                16.ph,
                Text(
                  LocaleKeys.auth_connect.tr(),
                  style: context.bodyLarge?.copyWith(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                16.ph,
                Text(
                  LocaleKeys.auth_instantly_memorable.tr(),
                  style: context.bodyLarge?.copyWith(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                48.ph,
                ButtonWidget(
                  // title: "Create a free account ",
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        LocaleKeys.auth_create_a_free_account.tr(),
                        style: context.bodyLarge?.copyWith(
                          color: context.midnight4,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      8.pw,
                      Icon(
                        Icons.arrow_forward,
                        color: context.midnight4,
                      )
                    ],
                  ),
                  onTap: () {
                    Alerts.bottomSheet(context,
                        child: Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: CreateAccountBottomSheet(),
                        ));
                  },
                  buttonColor: Colors.white,
                  textColor: context.midnight4,
                ),
                20.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      "Already have an account?",
                      color: context.buttonColor,
                    ),
                    TextButtonWidget(
                      function: () {
                        Alerts.bottomSheet(context,
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom,
                              ),
                              child: LoginBottomSheetWidget(),
                            ));
                      },
                      text: "Log in",
                      color: context.buttonColor,
                    )
                  ],
                ),
                12.ph,
              ],
            ).paddingAll(AppSize.s16),
          ),
        ),
      ),
    );
  }
}
