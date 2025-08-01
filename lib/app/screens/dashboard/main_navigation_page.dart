import 'package:flutter/material.dart';
import 'package:room_finder/app/screens/dashboard/home/home_page.dart';
import 'package:room_finder/util/theme/app_colors.dart';
import 'package:room_finder/util/theme/font_family.dart';

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  State<MainNavigationPage> createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {
  int currentIndex = 0;
  final List<Widget> screens = [
    HomePage(),
    Center(child: Icon(Icons.login)),
    Center(child: Icon(Icons.outbond)),
    Center(child: Icon(Icons.abc)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(icon: Icons.home, index: 0, label: 'Home'),
          _buildNavItem(icon: Icons.login, index: 1, label: 'Login'),
          _buildNavItem(icon: Icons.outbond, index: 2, label: 'Outbound'),
          _buildNavItem(icon: Icons.abc, index: 3, label: 'ABC'),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required int index,
    required String label,
  }) {
    final isSelected = currentIndex == index;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        splashColor: AppColors.primarySplashColor,
        onTap: () {
          setState(() {
            currentIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: isSelected ? AppColors.primaryColor : Colors.grey,
                size: isSelected ? 26 : 22,
              ),
              SizedBox(height: 2),
              Text(
                label,
                style: TextStyle(
                  fontFamily:
                      isSelected
                          ? FontFamily.kanitBold
                          : FontFamily.kanitRegular,
                  color: isSelected ? AppColors.primaryColor : Colors.grey,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
