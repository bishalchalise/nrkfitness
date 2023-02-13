import 'package:flutter/material.dart';
import 'package:nrkfitness/utilities/app_router.dart';
import 'package:nrkfitness/utilities/app_routes.dart';
import 'package:nrkfitness/utilities/app_theme.dart';

class NrkFitness extends StatelessWidget {
  const NrkFitness({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nrk Fitness',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightPalette,
      darkTheme: AppTheme().darkPalette,
      initialRoute: AppRoutes.splashScreen,
      onGenerateRoute: AppRouter().onGenerateRoute,
    );
  }
}

