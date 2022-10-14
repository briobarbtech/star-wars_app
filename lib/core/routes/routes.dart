import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/characters/index/domain/entities/character.dart';
import 'package:star_wars_app/characters/index/persentation/pages/character_detail.dart';
import 'package:star_wars_app/characters/index/persentation/pages/character_list.dart';
import 'package:star_wars_app/homepage.dart';
import 'package:star_wars_app/characters/index/persentation/pages/not_found.dart';
// ignore: unused_import
import 'package:star_wars_app/characters/index/persentation/pages/splash_screen.dart';
import 'package:star_wars_app/report/presentation/pages/report_list.dart';

final _key = GlobalKey<NavigatorState>();
final routerProvider = Provider<GoRouter>((ref) {
  ref.watch(navBarIndex);
  final currentPage = ref.read(navBarIndex.notifier);

  return GoRouter(
    navigatorKey: _key,
    debugLogDiagnostics: true,
    initialLocation: 'homepage',
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
  );
});
