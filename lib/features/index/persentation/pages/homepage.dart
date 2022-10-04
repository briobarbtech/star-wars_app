import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/provider.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_status.dart';

final counterProvider = StateProvider((ref) => 1);

final characterProvider =
    StateNotifierProvider<CharacterNotifier, StarWarsStatus>(
        ((ref) => CharacterNotifier()));

class Homepage extends ConsumerWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final swCharacterData = ref.watch(characterProvider).characters;
    bool isLoading = ref.watch(characterProvider).isLoading;

    var counter = ref.watch(counterProvider);

    return Scaffold(
        appBar: AppBar(title: const Text("StarWars APP")),
        body: !isLoading
            ? Column(
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
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 15),
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
                              final url = ref.watch(characterProvider).previous;
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
              )
            : const Center(
                child: CircularProgressIndicator(),
              ));
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