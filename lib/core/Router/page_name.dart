import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// A class that defines the route names for the application.
///
/// - [name] is the name of the route.
/// - [path] is the path of the route.
///
/// Example usage:
/// ```dart
/// AppRoutes.home.push(context);
/// ```
class AppRoutes extends AppRoute {
  AppRoutes(super.name, super.path);

  static const splash = AppRoute('splash', '/');

  // auth
  static const welcome = AppRoute('welcome', '/welcome');
  static const enterPhone = AppRoute('enter_phone', '/enter_phone');
  static const verifyPhone = AppRoute('verify_phone', 'verify_phone');
  static const setPassword = AppRoute('set_password', 'set_password');
  static const registerSuccess = AppRoute('registerSuccess', 'registerSuccess');
  static const activateBiometrics = AppRoute('activate_biometrics', '/activate_biometrics');

  static const login = AppRoute('login', '/login');
  static const forgetPassword = AppRoute('forget_password', 'forget_password');
  static const forgetPasswordVerification = AppRoute('forget_password_verification', 'forget_password_verification');
  static const resetPassword = AppRoute('resetPassword', 'resetPassword');

  // onboarding
  static const onboarding = AppRoute('onboarding', '/onboarding');
  static const completeInfo = AppRoute('completeInfo', 'completeInfo');

  // training
  static const trainings = AppRoute('trainings', '/trainings');
  static const lessons = AppRoute('lessons', 'lessons/:$trainingId');
  static const lessonDetails = AppRoute('lesson_details', 'lesson_details/:$lessonId');
  static const pdfPreview = AppRoute('pdfPreview', '/pdfPreview');

  // Quizes
  static const quiz = AppRoute('quiz', '/quiz');
  static const quizResult = AppRoute('quizResult', 'quizResult');
  static const downloadCerticate = AppRoute('downloadCerticate', 'downloadCerticate');

  // settings
  static const settings = AppRoute('settings', '/settings');
  static const profile = AppRoute('profile', 'change_language');
  static const EditProfileScreen = AppRoute('edit_profile', '/edit_profile');
  static const ProductsScreen = AppRoute('products', '/products');
  static const deleteAccount = AppRoute('delete_account', 'delete_account');

  //financial
  static const financial = AppRoute('financial', 'financial');
  static const bankInfo = AppRoute('bankInfo', 'bankInfo');
  static const paymentHistory = AppRoute('payment_history', 'payment_history');

  // home
  static const home = AppRoute('home', '/home');

  // check in
  static const checkIn = AppRoute('checkIn', '/checkIn');

  // tickets
  static const tickets = AppRoute('tickets', '/tickets');
  static const addTicket = AppRoute('addTicket', 'addTicket');
  static const ticketDetails = AppRoute('ticketDetails', 'ticketDetails/:$ticketId');

  // contracts
  static const contracts = AppRoute('contracts', 'contracts');
  static const contractDetails = AppRoute('contractDetails', 'contractDetails/:$contractId');
  static const attachmentPreview = AppRoute('attachmentPreview', 'attachmentPreview');
  static const map = AppRoute('map', 'map');

  // params
  static const trainingId = 'trainingId';
  static const lessonId = 'lessonId';
  static const contractId = 'contractId';
  static const ticketId = 'ticketId';
}

class AppRoute {
  final String name;
  final String path;

  const AppRoute(this.name, this.path);

  /// Pushes the route with the given name onto the navigator.
  Future<T?> push<T extends Object?>(
      BuildContext context, {
        Object? extra,
        Map<String, String> params = const <String, String>{},
        Map<String, dynamic> queries = const <String, dynamic>{},
      }) {
    return context.pushNamed(name, extra: extra, queryParameters: queries, pathParameters: params);
  }

  /// Pushes a new route onto the navigator, and replaces the current route with the new route.
  void pushReplacement<T extends Object?>(
      BuildContext context, {
        Object? extra,
        Map<String, String> params = const <String, String>{},
        Map<String, dynamic> queries = const <String, dynamic>{},
      }) {
    context.pushReplacementNamed(name, extra: extra, queryParameters: queries, pathParameters: params);
  }

  /// Navigates to the specified route.
  void go<T extends Object?>(
      BuildContext context, {
        Object? extra,
        Map<String, String> params = const <String, String>{},
        Map<String, dynamic> queries = const <String, dynamic>{},
      }) {
    return context.goNamed(name, extra: extra, queryParameters: queries, pathParameters: params);
  }
}
