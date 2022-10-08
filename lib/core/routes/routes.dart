import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:star_wars_app/characters/index/domain/entities/character.dart';
import 'package:star_wars_app/characters/index/persentation/pages/character_detail.dart';
import 'package:star_wars_app/characters/index/persentation/pages/homepage.dart';
import 'package:star_wars_app/characters/index/persentation/pages/not_found.dart';

abstract class StarWarsRoutes {
  static final GoRouter router = GoRouter(routes: <GoRoute>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const Homepage(),
        routes: <GoRoute>[
          GoRoute(
            path: 'homepage',
            name: 'homepage',
            builder: (BuildContext context, GoRouterState state) =>
                const Homepage(),
          ),
          GoRoute(
            path: 'details',
            name: 'details',
            builder: (BuildContext context, GoRouterState state) {
              Object? character = state.extra;
              if (character != null && character is Character) {
                return CharacterDetails(character: character);
              } else {
                return const NotFound();
              }
            },
          ),
        ])
  ]);
}
