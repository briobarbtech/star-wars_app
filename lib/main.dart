import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/core/routes/routes.dart';

void main() {
  // Inicializo el Hive

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
        colorScheme: const ColorScheme.dark(),
      ));
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