import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:star_wars_app/characters/index/domain/entities/character.dart';

Widget infoCharacter(Character character, context) {
  return SizedBox(
    child: Column(
      children: [
        Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary),
                    child: ListTile(
                      leading: const FaIcon(
                        FontAwesomeIcons.spinner,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      title: const Text("Color de cabello: "),
                      subtitle: Text(character.hairColor),
                    )),
                Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary),
                    child: ListTile(
                        leading: const FaIcon(
                          FontAwesomeIcons.cakeCandles,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        title: const Text("Fecha de nacimiento: "),
                        subtitle: Text(character.birthYear))),
                Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary),
                    child: ListTile(
                      leading: const FaIcon(
                        FontAwesomeIcons.droplet,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      title: const Text("Color de piel: "),
                      subtitle: Text(character.skinColor),
                    )),
                Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary),
                    child: ListTile(
                      leading: const FaIcon(
                        FontAwesomeIcons.ruler,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      title: const Text("Estatura: "),
                      subtitle: Text('${character.height} cm'),
                    )),
                const SizedBox(
                  width: 20,
                )
              ]),
        )
      ],
    ),
  );
}
