import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/features/index/data/datasource/remote_datasource_sw.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/provider.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_status.dart';

class Homepage extends ConsumerWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final swCharacterData = ref.watch(characterProvider).characters;
    bool isLoading = ref.watch(characterProvider).isLoading;

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
                            leading: const Icon(Icons.account_circle),
                            trailing: const Text(
                              "Ver más",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 15),
                            ),
                            title: Text(swCharacterData[index].name));
                      }),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () async {
                            final url = ref.watch(characterProvider).previous;
                            await ref
                                .read(characterProvider.notifier)
                                .loadCharacters(url);
                            ;
                          },
                          child: const Text("Previous")),
                      ElevatedButton(
                          onPressed: () async {
                            final url = ref.watch(characterProvider).next;
                            await ref
                                .read(characterProvider.notifier)
                                .loadCharacters(url);
                          },
                          child: const Text("Next")),
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