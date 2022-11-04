import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/characters/index/persentation/riverpod/provider.dart';

Widget bottomNavBar(WidgetRef ref) {
  return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.amber[800],
      onTap: (value) {
        ref.read(navBarIndex.notifier).state = value;
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.triangleExclamation),
          label: 'Report',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.bars),
          label: 'Home',
        ),
      ]);
}
