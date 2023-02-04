import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payapp/screens/home.dart';

const String transaction = 'assets/images/transaction.svg';
const String categories = 'assets/images/categories.svg';
const String payments = 'assets/images/payments.svg';
const String piggy_bank = 'assets/images/piggy_bank.svg';
const String more = 'assets/images/more.svg';

class BottomBar extends StatefulWidget {
  static int _selectedIndex = 0;

  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  void _onItemTapped(int index) {
    setState(() {
      BottomBar._selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBody: true,
      backgroundColor: Colors.transparent,
      //appBar: AppBar(),
      body: const SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        child: Home(),
      )),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: BottomBar._selectedIndex,
        selectedItemColor: Colors.blue[500],
        onTap: _onItemTapped,
        backgroundColor: const Color(0x00ffffff),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                transaction,
                colorFilter: BottomBar._selectedIndex == 0
                    ? ColorFilter.mode(Colors.blue[200]!, BlendMode.srcIn)
                    : null,
              ),
              label: "Transaction"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                categories,
                colorFilter: BottomBar._selectedIndex == 1
                    ? ColorFilter.mode(Colors.blue[200]!, BlendMode.srcIn)
                    : null,
              ),
              label: "Categories"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                payments,
                colorFilter: BottomBar._selectedIndex == 2
                    ? ColorFilter.mode(Colors.blue[200]!, BlendMode.srcIn)
                    : null,
              ),
              label: "Payments"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                piggy_bank,
                colorFilter: BottomBar._selectedIndex == 3
                    ? ColorFilter.mode(Colors.blue[200]!, BlendMode.srcIn)
                    : null,
              ),
              label: "Piggy Bank"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                more,
                colorFilter: BottomBar._selectedIndex == 4
                    ? ColorFilter.mode(Colors.blue[200]!, BlendMode.srcIn)
                    : null,
              ),
              label: "More"),
        ],
      ),
    );
  }
}
