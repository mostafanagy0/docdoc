import 'package:docdoc/core/di/dependancy_ingection.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/features/home/ui/views/home_view.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/ui/views/login_view.dart';
import 'package:docdoc/features/home/ui/views/main_screen.dart';
import 'package:docdoc/features/onbording/onbording_view.dart';
import 'package:docdoc/features/profile/ui/views/profile_view.dart';
import 'package:docdoc/features/search/ui/views/search_view.dart';
import 'package:docdoc/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:docdoc/features/sign_up/ui/presentation/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnbordingView());

      //login
      case Routes.loginView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginView(),
                ));

      //Home

      case Routes.homeview:
        return MaterialPageRoute(builder: (_) => const HomeView());

      // Profile
      case Routes.profileView:
        return MaterialPageRoute(builder: (_) => const ProfileView());
      // search
      case Routes.searchView:
        return MaterialPageRoute(builder: (_) => const SearchView());
      // Main Screen
      case Routes.mainScreen:
        return MaterialPageRoute(builder: (_) => const MainScreen());

      // Signup
      case Routes.signupView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<SignUpCubit>(),
                  child: const SignupView(),
                ));

      default:
        return null;
    }
  }
}
