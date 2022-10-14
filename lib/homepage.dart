import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/characters/index/persentation/pages/character_list.dart';
import 'package:star_wars_app/characters/index/persentation/riverpod/provider.dart';
import 'package:star_wars_app/core/widgets/bottom_nav_bar_sw.dart';
import 'package:star_wars_app/core/widgets/drawer_starwars.dart';
import 'package:star_wars_app/report/presentation/pages/report_list.dart';

final navBarIndex = StateProvider((ref) => 1);

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);
  static String get routeName => 'home';
  static String get routeLocation => '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      drawer: DrawerStarWars(
          starWarsState: stateNotifierProvider,
          switchProvider: swithCurrentValue),
      appBar: AppBar(
        title:
            Text("StarWars APP", style: Theme.of(context).textTheme.headline1),
        centerTitle: true,
      ),
      body: ref.watch(navBarIndex) == 0
          ? const CharacterList()
          : const ReportList(),
      bottomNavigationBar: bottomNavBar(ref),
    );
  }
}
