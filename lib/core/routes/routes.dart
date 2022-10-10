import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:star_wars_app/characters/index/domain/entities/character.dart';
import 'package:star_wars_app/characters/index/persentation/pages/character_detail.dart';
import 'package:star_wars_app/characters/index/persentation/pages/character_list.dart';
import 'package:star_wars_app/characters/index/persentation/pages/homepage.dart';
import 'package:star_wars_app/characters/index/persentation/pages/not_found.dart';
// ignore: unused_import
import 'package:star_wars_app/characters/index/persentation/pages/splash_screen.dart';

abstract class StarWarsRoutes {
  static final GoRouter router = GoRouter(routes: <GoRoute>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const HomePage(),
        routes: <GoRoute>[
          GoRoute(
            path: 'menu',
            name: 'menu',
            builder: (BuildContext context, GoRouterState state) =>
                const HomePage(),
          ),
          GoRoute(
            path: 'character_list',
            name: 'character_list',
            builder: (BuildContext context, GoRouterState state) =>
                const CharacterList(),
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
