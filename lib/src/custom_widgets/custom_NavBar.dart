import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({
    Key? key,
    required this.pages,
    required this.navItems,
    required this.fab,
    required this.initialIndex,
    required this.onNavItemTapped,
  }) : super(key: key);

  final List<Widget> pages;
  final List<BottomNavigationBarItem> navItems;
  final Widget fab;
  final int initialIndex;
  final Function(int) onNavItemTapped;

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: widget.navItems.map((item) {
            var index = widget.navItems.indexOf(item);
            return GestureDetector(
              onTap: () => _onNavItemTapped(index),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    item.icon as Icon,
                    Text(
                      item.label!,
                      style: TextStyle(
                        color: _selectedIndex == index
                            ? Colors.blueAccent
                            : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: widget.fab,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.onNavItemTapped(index);
  }
}
