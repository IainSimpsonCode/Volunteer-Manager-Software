import 'package:flutter/material.dart';
import "package:volunteer_manager/themes/theme.dart";

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  // initialize a index
  int _selectedIndex = 0;
  //int _selectedDestination = 0;
  bool _extended = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: 150,
    //   height: MediaQuery.sizeOf(context).height,
    //   color: Colors.orange,
    // );
    return NavigationRail(
      extended: _extended,
      selectedIndex: _selectedIndex,
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;

          if (index == 0)
          {
            _extended = !_extended;
          }
        });
      },
      labelType: NavigationRailLabelType.none,
      backgroundColor: primaryColor,
      destinations: <NavigationRailDestination>[
        // navigation destinations
        NavigationRailDestination(
          icon: const Icon(Icons.arrow_right_outlined),
          selectedIcon: const Icon(Icons.arrow_right),
          label: Text('Extend', style: alt_h4),
        ),
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
      ],
      selectedIconTheme: const IconThemeData(color: Colors.white),
      unselectedIconTheme: const IconThemeData(color: Colors.black),
      selectedLabelTextStyle: const TextStyle(color: Colors.white),
    );
  //   return Drawer(
  //         child: ListView(
  //           // Important: Remove any padding from the ListView.
  //           padding: EdgeInsets.zero,
  //           children: <Widget>[
  //             Padding(
  //               padding: const EdgeInsets.all(16.0),
  //               child: Text(
  //                 'Header',
  //                 //style: textTheme.headline6,
  //               ),
  //             ),
  //             Divider(
  //               height: 1,
  //               thickness: 1,
  //             ),
  //             ListTile(
  //               leading: Icon(Icons.favorite),
  //               title: Text('Item 1'),
  //               selected: _selectedDestination == 0,
  //               onTap: () => selectDestination(0),
  //             ),
  //             ListTile(
  //               leading: Icon(Icons.delete),
  //               title: Text('Item 2'),
  //               selected: _selectedDestination == 1,
  //               onTap: () => selectDestination(1),
  //             ),
  //             ListTile(
  //               leading: Icon(Icons.label),
  //               title: Text('Item 3'),
  //               selected: _selectedDestination == 2,
  //               onTap: () => selectDestination(2),
  //             ),
  //             Divider(
  //               height: 1,
  //               thickness: 1,
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.all(16.0),
  //               child: Text(
  //                 'Label',
  //               ),
  //             ),
  //             ListTile(
  //               leading: Icon(Icons.bookmark),
  //               title: Text('Item A'),
  //               selected: _selectedDestination == 3,
  //               onTap: () => selectDestination(3),
  //             ),
  //           ],
  //         ),
  //       );
  }

  // void selectDestination(int index)
  // {
  //   setState(() {
  //     _selectedDestination = index;
  //   });
  // }
}
