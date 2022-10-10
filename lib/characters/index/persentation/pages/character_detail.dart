import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/characters/index/persentation/riverpod/provider.dart';
import 'package:star_wars_app/core/widgets/info_character.dart';
import 'package:star_wars_app/core/widgets/profile.dart';
import 'package:star_wars_app/characters/index/data/model/report_model.dart';
import 'package:star_wars_app/characters/index/domain/entities/character.dart';

/* Report Notifier Provider */

class CharacterDetails extends ConsumerWidget {
  const CharacterDetails({Key? key, required this.character}) : super(key: key);
  final Character character;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          actions: const [BackButton()],
          title: Text(character.name),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            children: [
              profile(context, character),
              infoCharacter(character, context),
              const SizedBox(
                height: 45,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (ref.watch(swithCurrentValue).switchState) {
                      ref.read(reportProvider.notifier).reportSighting(
                          ReportModel.fromCharacterObject(character));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content:
                              Text("Por favor activa la conexión primero")));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).colorScheme.error,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      textStyle: Theme.of(context).textTheme.headline2),
                  child: Text(
                    "Reportar avistamiento!",
                    style: Theme.of(context).textTheme.headline2,
                  ))
            ],
          ),
        )));
  }
}
