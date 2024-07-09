import 'package:animated_widgets_flutter/widgets/opacity_animated.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/Router/Router.dart';
import '../../../../../core/Router/page_name.dart';
import '../../../../../core/utils/extentions.dart';
import '../../../cubit/splash_cubit.dart';
import '../../../cubit/splash_states.dart';

///// put it in routes
///  import '../../modules/splash/presentation/splash.dart';
/// static const String splashScreen = "/splashScreen";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SplashCubit(),
        child: Scaffold(
          body: BlocConsumer<SplashCubit, SplashStates>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return Center(
                child: OpacityAnimatedWidget.tween(
                  opacityEnabled: 1,
                  opacityDisabled: 0,
                  duration: const Duration(milliseconds: 3000),
                  enabled: true,
                  animationFinished: (finished) async {
                    context.go(AppRoutes.login.path);
                    // Navigator.pushNamed(context, Routes.AuthScreen);
                    // Navigator.pushNamedAndRemoveUntil(
                    //     context, Routes.AuthScreen, (route) => false);
                  },
                  child: SvgPicture.asset(
                    "logo_w".svg('icons'),
                    // width: 200,
                    // height: 250,
                  ),
                ),
              );
            },
          ),
        ));
  }
}
