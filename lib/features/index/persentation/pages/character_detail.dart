import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/features/index/domain/entities/character.dart';

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
            child: Row(
          children: [Text(character.name)],
        )));
  }
}
