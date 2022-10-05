import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/persentation/pages/character_detail.dart';
import 'package:star_wars_app/features/index/persentation/pages/homepage.dart';
import 'package:star_wars_app/features/index/persentation/pages/not_found.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: "Personajes",
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
      ));
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




/* TODO: - Hacer la card de los personajes
  - Nacimiento (birth_year)
  - Color de ojos (eye_color)
  - Genero (gender)
  - Color de pelo (hair_color)
  - Altura (height)
  - Mundo natal (homeworld)
  - Peso (mass)
  - Nombre (name)*/