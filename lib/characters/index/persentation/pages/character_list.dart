import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:star_wars_app/characters/index/persentation/riverpod/provider.dart';
import 'package:star_wars_app/core/widgets/connection_verifier.dart';

/* STATES PROVIDERS */
final pageCounterProvider = StateProvider((ref) => 1);

class CharacterList extends ConsumerWidget {
  const CharacterList({Key? key}) : super(key: key);
  static String get routeName => 'character_list';
  static String get routeLocation => 'character_list';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /* Characters */
    final swCharacterData = ref.watch(characterProvider).characters;
    /* State of petition */
    bool isLoading = ref.watch(characterProvider).isLoading;
    /* page counter */
    var pageCounter = ref.watch(pageCounterProvider);

    return Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text("Personajes")),
        body: !isLoading
            ? Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Column(
                  children: [
                    ConnectionVerifier(swichtState: swithCurrentValue),
                    ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: swCharacterData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SingleChildScrollView(
                            child: ListTile(
                                onTap: () {
                                  context.go('/details',
                                      extra: swCharacterData[index]);
                                },
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
                                title: Text(
                                  swCharacterData[index].name,
                                  style: Theme.of(context).textTheme.bodyText1,
                                )),
                          );
                        }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 20.0),
                        ElevatedButton(
                            onPressed: () async {
                              if (ref.watch(characterProvider).previous !=
                                  'null') {
                                ref.read(pageCounterProvider.notifier).state--;
                                final url =
                                    ref.watch(characterProvider).previous;
                                ref
                                    .read(characterProvider.notifier)
                                    .loadCharacters(url);
                              }
                            },
                            child: Text("Previous ${pageCounter - 1}")),
                        ElevatedButton(
                            onPressed: () async {
                              if (ref.watch(characterProvider).next != 'null') {
                                ref.read(pageCounterProvider.notifier).state++;
                                final url = ref.watch(characterProvider).next;
                                ref
                                    .read(characterProvider.notifier)
                                    .loadCharacters(url);
                              }
                            },
                            child: Text("Next ${pageCounter + 1}")),
                        const SizedBox(width: 20.0)
                      ],
                    )
                  ],
                ))
            : Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                      CircularProgressIndicator(),
                      SizedBox(
                        height: 80.0,
                      ),
                    ])),
              ));
  }
}
