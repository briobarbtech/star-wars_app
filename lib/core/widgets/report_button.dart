import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/characters/index/persentation/riverpod/provider.dart';
import 'package:star_wars_app/report/data/model/report_model.dart';
import 'package:star_wars_app/report/presentation/riverpod/provider.dart';

ElevatedButton reportButton(WidgetRef ref, BuildContext context, character) {
  return ElevatedButton(
      onPressed: () {
        if (ref.watch(swithCurrentValue).switchState) {
          ref
              .read(reportProvider.notifier)
              .reportSighting(ReportModel.fromCharacterObject(character));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Por favor activa la conexión primero")));
        }
      },
      style: ElevatedButton.styleFrom(
          primary: Theme.of(context).colorScheme.error,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          textStyle: Theme.of(context).textTheme.headline2),
      child: Text(
        "Reportar avistamiento!",
        style: Theme.of(context).textTheme.headline2,
      ));
}