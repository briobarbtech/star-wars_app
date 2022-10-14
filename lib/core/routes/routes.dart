import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/characters/index/data/freezed/starwars_state.dart';
import 'package:star_wars_app/characters/index/domain/entities/character.dart';
import 'package:star_wars_app/characters/index/persentation/pages/character_detail.dart';
import 'package:star_wars_app/characters/index/persentation/pages/character_list.dart';
import 'package:star_wars_app/characters/index/persentation/riverpod/provider.dart';
import 'package:star_wars_app/homepage.dart';
import 'package:star_wars_app/characters/index/persentation/pages/not_found.dart';
// ignore: unused_import
import 'package:star_wars_app/characters/index/persentation/pages/splash_screen.dart';
import 'package:star_wars_app/report/presentation/pages/report_list.dart';

final _key = GlobalKey<NavigatorState>();
final routerProvider = Provider<GoRouter>((ref) {
  ref.watch(stateNotifierProvider);
  final currentPage = ref.read(stateNotifierProvider.notifier);

  return GoRouter(
    navigatorKey: _key,
    debugLogDiagnostics: true,
    initialLocation: HomePage.routeLocation,
    routes: [
      GoRoute(
        path: HomePage.routeLocation,
        name: HomePage.routeName,
        builder: (BuildContext context, GoRouterState state) =>
            const HomePage(),
      ),
      GoRoute(
        path: CharacterList.routeLocation,
        name: CharacterList.routeName,
        builder: (BuildContext context, GoRouterState state) =>
            const CharacterList(),
      ),
      GoRoute(
        path: ReportList.routeLocation,
        name: ReportList.routeName,
        builder: (BuildContext context, GoRouterState state) =>
            const ReportList(),
      ),
      GoRoute(
        path: SplashPage.routeLocation,
        name: SplashPage.routeName,
        builder: (BuildContext context, GoRouterState state) =>
            const SplashPage(),
      ),
      GoRoute(
        path: CharacterDetails.routeLocation,
        name: CharacterDetails.routeName,
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
    redirect: (context, state) {
      // TOOD: Implementar lógica de redirreción
    },
  );
});
