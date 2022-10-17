import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/characters/index/persentation/riverpod/provider.dart';
import 'package:star_wars_app/core/widgets/info_character.dart';
import 'package:star_wars_app/core/widgets/profile.dart';
import 'package:star_wars_app/core/widgets/report_button.dart';
import 'package:star_wars_app/characters/index/domain/entities/character.dart';

class CharacterDetails extends ConsumerWidget {
  const CharacterDetails({Key? key, required this.character}) : super(key: key);
  final Character character;
  static String get routeName => 'character_details';
  static String get routeLocation => routeName;
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
              reportButton(ref, context, character)
            ],
          ),
        )));
  }
}
