import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/characters/index/persentation/pages/character_list.dart';
import 'package:star_wars_app/characters/index/persentation/riverpod/provider.dart';
import 'package:star_wars_app/core/widgets/drawer_starwars.dart';
import 'package:star_wars_app/report/presentation/pages/report_list.dart';

class HomePage extends ConsumerWidget {
  HomePage({Key? key}) : super(key: key);
  static const List<Widget> _widgetOptions = <Widget>[
    CharacterList(),
    ReportList(),
  ];
  static String get routeName => 'homepage';
  static String get routeLocation => '/';
  final _currentIndex = StateProvider((ref) => 0);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /* const String charactersImage = "lib/core/assets/images/characters.jpg";
    const String reportImage = "lib/core/assets/images/reports.jpg"; */
    return Scaffold(
      drawer: DrawerStarWars(
          starWarsState: characterProvider, switchProvider: swithCurrentValue),
      appBar: AppBar(
        title:
            Text("StarWars APP", style: Theme.of(context).textTheme.headline1),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: _widgetOptions.elementAt(ref.watch(_currentIndex)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        currentIndex: ref.watch(_currentIndex),
        selectedItemColor: Theme.of(context).colorScheme.tertiary,
        onTap: (int value) {
          ref.read(_currentIndex.notifier).state = value;
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.peopleLine), label: "Characters"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.triangleExclamation),
              label: "Sighting")
        ],
      ),
    );
  }
}
