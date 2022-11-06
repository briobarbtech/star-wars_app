import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/report/presentation/widgets/delete_confirm_dialog.dart';

showReportItemModal(WidgetRef ref, BuildContext modalContext, item) {
  return showModalBottomSheet(
      context: modalContext,
      builder: (modalContext) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(FontAwesomeIcons.trash),
              title: const Text('Delete'),
              onTap: () async {
                await deleteConfirmDialog(ref, modalContext, item);
                Navigator.of(modalContext).pop();
              },
            )
          ],
        );
      });
}
