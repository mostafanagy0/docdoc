import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      backgroundColor: Colors.white,
      elevation: 20,

      selectedItemColor: Colors.blue,
      //unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: [
        //  Home
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/home.svg',
            width: 24,
            height: 24,
            color: currentIndex == 0 ? Colors.blue : Colors.grey,
          ),
          label: '',
        ),
        //enpty item for spacing
        const BottomNavigationBarItem(
          icon: SizedBox.shrink(),
          label: '',
        ),
        //  Profile
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/inactiveprofile.svg',
            width: 24,
            height: 24,
            color: currentIndex == 2 ? Colors.blue : Colors.grey,
          ),
          label: '',
        ),
      ],
    );
  }
}
