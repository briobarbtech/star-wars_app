import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/characters/index/persentation/riverpod/provider.dart';
import 'package:star_wars_app/core/widgets/drawer_starwars.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);
  static String get routeName => 'homepage';
  static String get routeLocation => '/';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const String charactersImage = "lib/core/assets/images/characters.jpg";
    const String reportImage = "lib/core/assets/images/reports.jpg";
    return Scaffold(
      drawer: DrawerStarWars(
          starWarsState: characterProvider, switchProvider: swithCurrentValue),
      appBar: AppBar(
        title:
            Text("StarWars APP", style: Theme.of(context).textTheme.headline1),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ButtonCard(
                      image: charactersImage,
                      title: "Character",
                      route: 'character_list'),
                  ButtonCard(
                      image: reportImage,
                      title: "Reports",
                      route: 'report_list'),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(height: 8.0),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonCard extends StatelessWidget {
  const ButtonCard(
      {Key? key, required this.image, required this.title, required this.route})
      : super(key: key);
  final String route;
  final double top = 18;
  final double bottom = 5;
  final String image;
  final String title;
  final double width = 160;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.go('/$route');
      },
      child: Container(
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(top),
              topRight: Radius.circular(top),
              bottomLeft: Radius.circular(bottom),
              bottomRight: Radius.circular(bottom),
            ),
            color: Theme.of(context).colorScheme.inversePrimary),
        child: Column(
          children: [
            Container(
                width: width,
                height: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image)),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(top),
                      topRight: Radius.circular(top),
                    ))),
            Text(
              title,
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
