import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:star_wars_app/characters/index/persentation/pages/character_detail.dart';
import 'package:star_wars_app/characters/index/persentation/riverpod/provider.dart';
import 'package:star_wars_app/core/endpoints/endpoints.dart';
import 'package:star_wars_app/core/widgets/connection_verifier.dart';

/* STATES PROVIDERS */
final pageCounterProvider = StateProvider((ref) => 0);

class CharacterList extends ConsumerWidget {
  const CharacterList({Key? key}) : super(key: key);
  static String get routeName => 'character_list';
  static String get routeLocation => routeName;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /* Characters */
    final swCharacterData = ref.watch(characterProvider).characters;
    /* State of petition */
    bool isLoading = ref.watch(characterProvider).isLoading;

    return !isLoading
        ? Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: Column(
              children: [
                ConnectionVerifier(swichtState: swithCurrentValue),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: swCharacterData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SingleChildScrollView(
                          child: ListTile(
                              onTap: () {
                                context.go('/${CharacterDetails.routeLocation}',
                                    extra: swCharacterData[index]);
                              },
                              leading: swCharacterData[index].gender == "male"
                                  ? const Icon(Icons.female_sharp)
                                  : const Icon(Icons.male_sharp),
                              trailing: TextButton(
                                  onPressed: () {
                                    context.go(
                                        '/${CharacterDetails.routeLocation}',
                                        extra: swCharacterData[index]);
                                  },
                                  child: const Text(
                                    "See more",
                                  )),
                              title: Text(
                                swCharacterData[index].name,
                                style: Theme.of(context).textTheme.bodyText1,
                              )),
                        );
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 20.0),
                    ElevatedButton(
                        onPressed: () async {
                          if (int.parse(
                                  ref.watch(characterProvider).previous) !=
                              0) {
                            final url = ref.watch(characterProvider).previous;
                            ref.read(characterProvider.notifier).loadCharacters(
                                Endpoints.mongoDBEndpoint +
                                    Endpoints.pageResource +
                                    url);
                          }
                        },
                        child: Text(
                            "Previous ${ref.watch(characterProvider).previous}")),
                    ElevatedButton(
                        onPressed: () async {
                          if (int.parse(ref.watch(characterProvider).next) <
                              10) {
                            ref.read(pageCounterProvider.notifier).state++;
                            final url = ref.watch(characterProvider).next;
                            ref.read(characterProvider.notifier).loadCharacters(
                                Endpoints.mongoDBEndpoint +
                                    Endpoints.pageResource +
                                    url);
                          }
                        },
                        child:
                            Text("Next ${ref.watch(characterProvider).next}")),
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
          );
  }
}
