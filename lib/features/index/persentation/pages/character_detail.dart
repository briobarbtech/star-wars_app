import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/features/index/data/model/report_model.dart';
import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/persentation/pages/homepage.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/provider.dart';

class CharacterDetails extends ConsumerWidget {
  CharacterDetails({Key? key, required this.character}) : super(key: key);

  final Character character;
  var bg = const NetworkImage(
      "https://www.enjpg.com/img/2020/space-background-19.jpg");
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          actions: const [BackButton()],
          title: Text(character.name,
              style: const TextStyle(fontFamily: 'starwars')),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: bg, fit: BoxFit.cover)),
          child: SafeArea(
              child: Center(
            child: Column(
              children: [
                Text(character.name),
                ElevatedButton(
                    onPressed: () {
                      final status = ref.read(reportResponse(ReportModel(
                          id: 1,
                          body: "sighted character was ${character.name}",
                          title: "sighted character",
                          userId: 1)));
                      ref.watch(swithCurrentValue) == false
                          ? ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                              content:
                                  Text('Por favor activa la conexión antes'),
                            ))
                          : status == "201"
                              ? ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                  content: Text(
                                      'Ha ocurrido un error! Code: $status'),
                                ))
                              : ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                  content:
                                      Text('Se ha reportado el avistamiento!'),
                                ));
                    },
                    child: const Text("Reportar avistamiento!"))
              ],
            ),
          )),
        ));
  }
}
