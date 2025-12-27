import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;

  TopBar({required this.title, this.backgroundColor = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(color: Colors.white)),
      backgroundColor: backgroundColor,
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Add search functionality
          },
        ),
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            // Add notification functionality
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
