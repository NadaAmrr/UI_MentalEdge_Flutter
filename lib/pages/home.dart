import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentaledge_ui/pages/tabs/main_tab.dart';
import 'package:mentaledge_ui/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          height: 90,
          margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
                backgroundColor: Constants.bgMainColor,
                unselectedItemColor: Constants.icUnSelectColor,
                selectedItemColor: Constants.bgSecColor,
                currentIndex: index,
                onTap: (value) {
                  index = value;
                  setState(() {});
                },
                showUnselectedLabels: false,
                showSelectedLabels: false,
                items: [
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        '${Constants.svgPath}/ic_home.svg',
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        '${Constants.svgPath}/ic_calender.svg',
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        '${Constants.svgPath}/ic_bag.svg',
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        '${Constants.svgPath}/ic_chat.svg',
                      ),
                      label: ""),
                ]),
          ),
        ),
        body: tabs[index],
      ),
    );
  }
  List<Widget> tabs = [
    MainTab(),
    MainTab(),
    MainTab(),
    MainTab(),
  ];
}
