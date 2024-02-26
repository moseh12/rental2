// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:rental/utils/colorscheme.dart';

class AgentDetailsTabBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  // ignore: library_private_types_in_public_api
  _AgentDetailsTabBarState createState() => _AgentDetailsTabBarState();
  final TabController _tabController;

  const AgentDetailsTabBar(this._tabController, {super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class _AgentDetailsTabBarState extends State<AgentDetailsTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      color: Colors.white,
      child: TabBar(
        controller: widget._tabController,
        labelColor: primaryColor,
        unselectedLabelColor: Colors.grey,
        tabs: const [
          Tab(
            child: Text(
              'Introduction',
            ),
          ),
          Tab(
            child: Text('Contact Information'),
          )
        ],
      ),
    );
  }
}
