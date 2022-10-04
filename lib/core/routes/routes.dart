import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:star_wars_app/features/index/data/model/character_model.dart';
import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/persentation/pages/character_detail.dart';
import 'package:star_wars_app/features/index/persentation/pages/homepage.dart';

class StarWarsRoutes {
  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) =>
              const Homepage()),
      GoRoute(
        path: '/character_details',
        builder: (context, state) {
          // use state.params to get router parameter values
          //final family = Families.family(state.params['fid']!);
          Object? character = state.extra;
          if (character != null && character is Character) {
            return CharacterDetails(character: character);
          } else {
            return CharacterDetails(
              character: CharacterModel(
                name: "",
                birthYear: "",
                eyeColor: "",
                gender: "",
                hairColor: "",
                height: "",
                homeworld: "",
                mass: "",
              ),
            );
          }
        },
      ),
    ],
  );
}
