import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/core/widgets/info_character.dart';
import 'package:star_wars_app/core/widgets/profile.dart';
import 'package:star_wars_app/features/index/data/model/report_model.dart';
import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/persentation/pages/homepage.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/provider.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/report_state.dart';

StateNotifierProvider<ReportStateNotifier, ReportState> reportProvider =
    StateNotifierProvider<ReportStateNotifier, ReportState>(
        ((ref) => ReportStateNotifier()));

class CharacterDetails extends ConsumerWidget {
  CharacterDetails({Key? key, required this.character}) : super(key: key);

  Character character;
  var bg = const NetworkImage(
      "https://www.enjpg.com/img/2020/space-background-19.jpg");
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          actions: const [BackButton()],
          title: Text(character.name,
              style: Theme.of(context).textTheme.headline6),
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
                          ReportModel(body: "", id: "", title: "", userId: ""));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Por favor activa la conexión antes'),
                      ));
                    }
                    if (ref.watch(reportProvider).statusCode == "201") {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              'Se ha reportado el avistamiento! ${ref.watch(reportProvider).statusCode}')));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              'Ha ocurrido algo! Error: ${ref.watch(reportProvider).statusCode}')));
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
