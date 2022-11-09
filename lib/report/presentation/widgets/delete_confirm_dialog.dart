import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/report/presentation/riverpod/provider.dart';

deleteConfirmDialog(WidgetRef ref, BuildContext dialogContext, item) {
  return showDialog(
    context: dialogContext,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: const Text('Delete item'),
        content:
            const SingleChildScrollView(child: Text('Are sure to delete it?')),
        actions: <Widget>[
          TextButton(
            child: const Text('Confirm'),
            onPressed: () async {
              await ref.read(reportProvider.notifier).deleteReport(item);
              if (await ref.watch(reportProvider).statusCode == "200") {
                ScaffoldMessenger.of(dialogContext).showSnackBar(
                    const SnackBar(content: Text("Se ha eliminado con éxito")));
              } else {
                ScaffoldMessenger.of(dialogContext).showSnackBar(SnackBar(
                    content: Text(
                        "Ha ocurrido un error! Code: ${ref.watch(reportProvider).statusCode}")));
              }

              Navigator.of(dialogContext).pop();
            },
          ),
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(dialogContext).pop();
            },
          ),
        ],
      );
    },
  );
}
