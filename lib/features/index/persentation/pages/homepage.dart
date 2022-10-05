import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/connection_state.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/provider.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_state.dart';

final counterProvider = StateProvider((ref) => 1);
final swithCurrentValue =
    StateNotifierProvider<ConnectionStateNotifier, ConnectionStateSW>(
        (ref) => ConnectionStateNotifier());

final characterProvider =
    StateNotifierProvider<CharacterNotifier, StarWarsState>(
        ((ref) => CharacterNotifier()));

class Homepage extends ConsumerWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final swCharacterData = ref.watch(characterProvider).characters;
    bool isLoading = ref.watch(characterProvider).isLoading;

    var counter = ref.watch(counterProvider);
    var bg = const NetworkImage(
        "https://www.enjpg.com/img/2020/space-background-19.jpg");
    return Scaffold(
        drawer: DrawerStarWars(
          switchProvider: swithCurrentValue,
        ),
        appBar: AppBar(
            centerTitle: true,
            title: const Text("StarWars APP",
                style: TextStyle(fontFamily: 'starwars'))),
        body: !isLoading
            ? Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: bg,
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: swCharacterData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                              leading: swCharacterData[index].gender == "male"
                                  ? const Icon(Icons.female_sharp)
                                  : const Icon(Icons.male_sharp),
                              trailing: TextButton(
                                  onPressed: () {
                                    context.go('/details',
                                        extra: swCharacterData[index]);
                                  },
                                  child: const Text(
                                    "Ver más",
                                    //style: Theme.of(context).textTheme.titleMedium,
                                  )),
                              title: Text(swCharacterData[index].name));
                        }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 20.0),
                        ElevatedButton(
                            onPressed: () async {
                              if (counter > 1) {
                                ref.read(counterProvider.notifier).state--;
                                final url =
                                    ref.watch(characterProvider).previous;
                                await ref
                                    .read(characterProvider.notifier)
                                    .loadCharacters(url);
                              }
                            },
                            child: Text("Previous ${counter - 1}")),
                        ElevatedButton(
                            onPressed: () async {
                              ref.read(counterProvider.notifier).state++;
                              final url = ref.watch(characterProvider).next;
                              await ref
                                  .read(characterProvider.notifier)
                                  .loadCharacters(url);
                            },
                            child: Text("Next ${counter + 1}")),
                        const SizedBox(width: 20.0)
                      ],
                    )
                  ],
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ));
  }
}

class DrawerStarWars extends ConsumerWidget {
  DrawerStarWars({Key? key, required this.switchProvider}) : super(key: key);
  var bg2 = const NetworkImage(
      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Star_Wars_Logo.svg/1920px-Star_Wars_Logo.svg.png");
  final StateNotifierProvider<ConnectionStateNotifier, ConnectionStateSW>
      switchProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: bg2,
              fit: BoxFit.cover,
            )),
            child: null,
          ),
          Container(
            decoration: ref.watch(switchProvider).switchState
                ? const BoxDecoration(color: Colors.green)
                : const BoxDecoration(color: Colors.red),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Conexión"),
                Switch(
                    value: ref.watch(switchProvider).switchState,
                    onChanged: (bool valueIn) {
                      ref.read(swithCurrentValue.notifier).switchState(valueIn);
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}


/* 
swCharacterData.when(
          data: ((data) => ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    leading: const Icon(Icons.list),
                    trailing: const Text(
                      "GFG",
                      style: TextStyle(color: Colors.green, fontSize: 15),
                    ),
                    title: Text("${data[index].name} $index"));
              })),
          error: (e, _) => const Center(
                child: Text("Ups! An error happens"),
              ),
          loading: () => const Center(
                child: CircularProgressIndicator(),
              )),
*/