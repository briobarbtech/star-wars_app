import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/core/routes/routes.dart';
import 'package:star_wars_app/features/index/data/hive/model/starwars_state_hive.dart';

late Box boxStarWars;
Future<void> main() async {
  // Inicializo el Hive
  await Hive.initFlutter();
  // Agrego un adaptador a Hive
  Hive.registerAdapter(StarWarsStateHiveAdapter());
  // Inicializo la app dentro de un ProviderScope de Riverpod
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(

      // Defino la configuración de GoRouter para manejar la navegación dentro de la app
      routeInformationProvider: StarWarsRoutes.router.routeInformationProvider,
      routeInformationParser: StarWarsRoutes.router.routeInformationParser,
      routerDelegate: StarWarsRoutes.router.routerDelegate,
      title: "Personajes",
      // Aquí inserto la configuración para el tema global
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme:
            const AppBarTheme(backgroundColor: Color.fromARGB(255, 19, 22, 31)),
        colorScheme: ColorScheme.fromSeed(
            primary: const Color.fromARGB(255, 240, 194, 81),
            background: const Color.fromARGB(255, 87, 134, 240),
            secondary: const Color.fromARGB(45, 112, 153, 255),
            inversePrimary: const Color.fromARGB(255, 240, 194, 81),
            tertiary: const Color.fromARGB(255, 46, 219, 138),
            error: const Color.fromARGB(255, 235, 53, 44),
            brightness: Brightness.dark,
            seedColor: const Color.fromARGB(255, 81, 126, 240)),
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'starwars',
              color: Color.fromARGB(255, 240, 194, 81)),
          headline2: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255)),
          headline6: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 24.0,
              fontFamily: 'starwars',
              color: Color.fromARGB(255, 240, 194, 81)),
          bodyText2: TextStyle(fontSize: 14.0),
        ),
      ));
}
// Solucionar que los widgets se salen del espacio
// Estilizar el Widget de ConnectionVerifier
// Traer el planeta
// Solucionar el porque la primera vez que reporta da un error
// Escoger la info que envía el reporte
/* TODO: - Hacer la card de los personajes
  - Nacimiento (birth_year)
  - Color de ojos (eye_color)
  - Genero (gender)
  - Color de pelo (hair_color)
  - Altura (height)
  - Mundo natal (homeworld)
  - Peso (mass)
  - Nombre (name)*/