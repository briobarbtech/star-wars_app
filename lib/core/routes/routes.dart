import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:star_wars_app/characters/index/domain/entities/character.dart';
import 'package:star_wars_app/characters/index/persentation/pages/character_detail.dart';
import 'package:star_wars_app/characters/index/persentation/pages/character_list.dart';
import 'package:star_wars_app/homepage.dart';
import 'package:star_wars_app/characters/index/persentation/pages/not_found.dart';
// ignore: unused_import
import 'package:star_wars_app/characters/index/persentation/pages/splash_screen.dart';
import 'package:star_wars_app/report/presentation/pages/report_list.dart';

abstract class StarWarsRoutes {
  static final GoRouter router = GoRouter(routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => HomePage(),
      routes: <GoRoute>[
        GoRoute(
          name: CharacterList.routeName,
          path: CharacterList.routeLocation,
          builder: (BuildContext context, GoRouterState state) =>
              const CharacterList(),
        ),
        GoRoute(
          name: ReportList.routeName,
          path: ReportList.routeLocation,
          builder: (BuildContext context, GoRouterState state) =>
              const ReportList(),
        ),
        GoRoute(
          name: CharacterDetails.routeName,
          path: CharacterDetails.routeLocation,
          builder: (BuildContext context, GoRouterState state) {
            Object? character = state.extra;
            if (character != null && character is Character) {
              return CharacterDetails(character: character);
            } else {
              return const NotFound();
            }
          },
        ),
      ],
    )
  ]);
}
