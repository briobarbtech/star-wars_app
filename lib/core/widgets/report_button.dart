import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/characters/index/persentation/riverpod/provider.dart';
import 'package:star_wars_app/report/data/model/report_model.dart';
import 'package:star_wars_app/report/presentation/riverpod/provider.dart';

Column reportButton(WidgetRef ref, BuildContext context, character) {
  return Column(
    children: [
      const SizedBox(
        height: 45,
      ),
      ElevatedButton(
          onPressed: () async {
            var statuscode = ref.watch(reportProvider).statusCode;
            if (ref.watch(swithCurrentValue).switchState) {
              await ref
                  .read(reportProvider.notifier)
                  .reportSighting(ReportModel.fromCharacterObject(character));
              if (ref.watch(reportProvider).statusCode != "0") {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('El reporte se hizo con éxito')));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Ha ocurrido un error! Code: $statuscode')));
              }
            } else {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Por favor activa la conexión primero")));
            }
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              textStyle: Theme.of(context).textTheme.headline2),
          child: Text(
            "Reportar avistamiento!",
            style: Theme.of(context).textTheme.headline2,
          )),
    ],
  );
}
