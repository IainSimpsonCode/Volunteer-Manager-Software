import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import "package:volunteer_manager/themes/theme.dart";

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  // initialize a index
  int _selectedIndex = 0;
  bool _extended = false;

  List<NavigationRailDestination> destinations = [
        // navigation destinations
        // NavigationRailDestination(
        //   icon: const Icon(Icons.arrow_right_outlined),
        //   selectedIcon: const Icon(Icons.arrow_right),
        //   label: Text('Extend', style: alt_h4),
        // ),
        NavigationRailDestination(
          icon: const Icon(Icons.favorite_border),
          selectedIcon: const Icon(Icons.favorite),
          label: Text('Wishlist', style: alt_h4),
        ),
        NavigationRailDestination(
          icon: const Icon(Icons.person_outline_rounded),
          selectedIcon: const Icon(Icons.person),
          label: Text('Account', style: alt_h4),
        ),
        NavigationRailDestination(
          icon: const Icon(Icons.shopping_cart_outlined),
          selectedIcon: const Icon(Icons.shopping_cart),
          label: Text('Cart', style: alt_h4),
        ),
      ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width <= compactScreenSize) {
      _extended = false;
    }
    else {
      _extended = true;
    }

    return NavigationRail(
      extended: _extended,
      selectedIndex: _selectedIndex,
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      backgroundColor: primaryColor,
      leading: FloatingActionButton.extended(
        onPressed: (){

        },
        label: Text("Search", style: h4),
        icon: const Icon(Icons.search_outlined),
      ),
      destinations: destinations,
      useIndicator: false,
      selectedIconTheme: const IconThemeData(color: tertiaryColor),
      unselectedIconTheme: const IconThemeData(color: secondaryColor),
    );
  }
}
