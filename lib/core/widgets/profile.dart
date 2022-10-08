import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:star_wars_app/core/widgets/icon_info.dart';
import 'package:star_wars_app/features/index/domain/entities/character.dart';

Widget profile(context, Character character) {
  return Container(
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.inversePrimary,
    ),
    child: Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(221),
            bottomRight: Radius.circular(0),
          )),
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('lib/core/assets/images/banner_profile.jpg'),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(125),
              bottomLeft: Radius.circular(221),
              bottomRight: Radius.circular(0),
            )),
        child: Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(195, 18, 32, 68),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(125),
                bottomLeft: Radius.circular(221),
                bottomRight: Radius.circular(0),
              )),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 40.0,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  child: Text(character.name[0],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(character.name),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 100,
                        width: 20,
                      ),
                      iconInfo(context, character.gender,
                          FontAwesomeIcons.transgender),
                      iconInfo(
                          context, character.eyeColor, FontAwesomeIcons.eye),
                      iconInfo(
                          context, character.homeworld, FontAwesomeIcons.globe),
                      iconInfo(context, character.mass,
                          FontAwesomeIcons.weightScale),
                      const SizedBox(
                        width: 20,
                      )
                    ]),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
