import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/core/assets/utils/theme_data_sw.dart';
import 'package:star_wars_app/core/routes/routes.dart';
import 'package:star_wars_app/characters/index/data/hive/model/starwars_state_hive.dart';

late Box boxStarWars;
Future<void> main() async {
  // Inicializo el Hive
  await Hive.initFlutter();
  // Agrego un adaptador a Hive
  Hive.registerAdapter(StarWarsStateHiveAdapter());
  // Inicializo la app dentro de un ProviderScope de Riverpod
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
        // Defino la configuración de GoRouter para manejar la navegación dentro de la app
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        title: "Personajes",

        // Aquí inserto la configuración para el tema global
        theme: ThemeDataSW.themeDataSW);
  }
}

// Hacer tarjetas para los reportes
// Solucionar que los widgets se salen del espacio
// Estilizar el Widget de ConnectionVerifier
// Traer el planeta
// Solucionar el porque la primera vez que reporta da un error



/* 
    "films": "https://swapi.dev/api/films/",
    "people": "https://swapi.dev/api/people/",
    "planets": "https://swapi.dev/api/planets/",
    "species": "https://swapi.dev/api/species/",
    "starships": "https://swapi.dev/api/starships/",
    "vehicles": "https://swapi.dev/api/vehicles/"
 */