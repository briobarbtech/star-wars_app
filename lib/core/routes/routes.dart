import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:star_wars_app/features/index/data/model/character_model.dart';
import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/persentation/pages/character_detail.dart';
import 'package:star_wars_app/features/index/persentation/pages/homepage.dart';
import 'package:star_wars_app/features/index/persentation/pages/not_found.dart';

class StarWarsRoutes {
  final GoRouter _router = GoRouter(routes: <GoRoute>[
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
