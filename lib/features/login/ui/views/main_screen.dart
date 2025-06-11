import 'package:docdoc/core/di/dependancy_ingection.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/features/home/logic/cubit/Home_cubit.dart';
import 'package:docdoc/features/home/ui/views/home_view.dart';
import 'package:docdoc/features/home/ui/widgets/custom_bottom_navigation_bar.dart';
import 'package:docdoc/features/profile/ui/views/profile_view.dart';
import 'package:docdoc/features/search/ui/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0; // current index (0: Home, 1: Search, 2: Profile)

  // Screens to display based on the current index
  final List<Widget> _screens = [
    BlocProvider(
      create: (context) => HomeCubit(getIt())..getSpecializations(),
      child: const HomeView(),
    ),
    const SearchView(),
    const ProfileView(),
  ];

  // update the current index when a navigation item is tapped
  void _onNavTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onNavTapped,
      ),
      // FloatingActionButton to navigate to the Search screen
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onNavTapped(1),
        backgroundColor: AppColor.mainBlue, // navigate to Search
        child: SvgPicture.asset('assets/svgs/search-normal.svg'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
