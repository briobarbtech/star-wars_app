import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:star_wars_app/characters/index/data/freezed/connection_state.dart';
import 'package:star_wars_app/characters/index/data/freezed/starwars_state.dart';
import 'package:star_wars_app/core/assets/utils/images_source.dart';
import 'package:star_wars_app/characters/index/persentation/riverpod/provider.dart';

class DrawerStarWars extends ConsumerWidget {
  const DrawerStarWars(
      {Key? key, required this.switchProvider, required this.starWarsState})
      : super(key: key);
  final StateNotifierProvider<ConnectionStateNotifier, ConnectionStateSW>
      switchProvider;
  final StateNotifierProvider<CharacterNotifier, StarWarsState> starWarsState;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.secondary),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: ImageSource.bannerImage,
                fit: BoxFit.cover,
              )),
              child: null,
            ),
            Container(
              decoration: ref.watch(switchProvider).switchState
                  ? BoxDecoration(color: Theme.of(context).colorScheme.tertiary)
                  : BoxDecoration(
                      color: Theme.of(context).colorScheme.inversePrimary),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Conexión"),
                  Switch(
                      activeColor: Theme.of(context).colorScheme.secondary,
                      value: ref.watch(switchProvider).switchState,
                      onChanged: (bool valueIn) {
                        ref.read(switchProvider.notifier).switchState(valueIn);
                      }),
                ],
              ),
            ),
            ListTile(
              selectedColor: Colors.white,
              title: const Text("Limpiar LocalStorage"),
              onTap: () {
                ref.read(starWarsState.notifier).cleanLocalStorage();
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Se ha limpiado el almacenamiento local')));
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
