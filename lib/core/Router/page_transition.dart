import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

enum PageTransitions { fade, scale, slide, slideUp, cupertino }

Duration transitionDuration = const Duration(milliseconds: 300);

/// Creates a custom transition page.
///
/// This function returns a [CustomTransitionPage] widget that can be used to define custom page transitions.
CustomTransitionPage<dynamic> customTransitionPage(
    Widget child,
    PageTransitions? pageAnimation,
    Duration? duration,
    ) {
  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget) transitionsBuilder;
  switch (pageAnimation) {
    case PageTransitions.fade:
      transitionsBuilder = (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      };
      break;
    case PageTransitions.scale:
      transitionsBuilder = (context, animation, secondaryAnimation, child) {
        return ScaleTransition(scale: animation, child: child);
      };
      break;
    case PageTransitions.slide:
      transitionsBuilder = (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero).animate(animation),
          child: child,
        );
      };
      break;
    case PageTransitions.slideUp:
      transitionsBuilder = (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero).animate(animation),
          child: child,
        );
      };
      break;
    case PageTransitions.cupertino:
      transitionsBuilder = (context, animation, secondaryAnimation, child) {
        return CupertinoPageTransition(
          linearTransition: true,
          primaryRouteAnimation: animation,
          secondaryRouteAnimation: secondaryAnimation,
          child: child,
        );
      };
      break;
    default:
      transitionsBuilder = (context, animation, secondaryAnimation, child) => child;
  }
  return CustomTransitionPage(
    child: child,
    transitionDuration: duration ?? transitionDuration,
    transitionsBuilder: transitionsBuilder,
  );
}
