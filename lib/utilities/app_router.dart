import 'package:flutter/material.dart';
import 'package:nrkfitness/features/authentication/views/screens/otp_screen.dart';
import 'package:nrkfitness/features/authentication/views/screens/register_screen.dart';
import 'package:nrkfitness/screens/gym_schedulepage.dart';
import 'package:nrkfitness/screens/home_screen.dart';

import 'package:nrkfitness/screens/splash_screen.dart';
import 'package:nrkfitness/screens/user_info.dart';
import 'package:nrkfitness/utilities/app_routes.dart';

class AppRouter {
  Route onGenerateRoute(final RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashScreen:
        return _buildRoute(settings, const SplashScreen());
      case AppRoutes.registerScreen:
        return _buildRoute(settings, const RegisterScreen());
       case AppRoutes.otpScreen:
        return _buildRoute(settings, const OtpScreen(verificationId: 'dffsds',));  
        case AppRoutes.userInfo:
        return _buildRoute(settings, const UserInfo());
        case AppRoutes.homeScreen:
        return _buildRoute(settings, const HomeScreen());
        case AppRoutes.gymSchedulePage:
        return _buildRoute(settings, const GymSchedule());
      default:
        return _buildRoute(settings, const SplashScreen());
    }
  }
}

Route _buildRoute(final RouteSettings settings, final Widget widget) {
  return MaterialPageRoute(
      settings: settings,
      builder: (context) {
        return widget;
      });
}
