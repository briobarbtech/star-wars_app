import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/connection_state.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/provider.dart';

class ConnectionVerifier extends ConsumerWidget {
  ConnectionVerifier({required this.swichtState, Key? key}) : super(key: key);
  StateNotifierProvider<ConnectionStateNotifier, ConnectionStateSW> swichtState;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
            color: ref.watch(swichtState).switchState
                ? Theme.of(context).colorScheme.tertiary
                : Theme.of(context).colorScheme.inversePrimary),
        child: ref.watch(swichtState).switchState
            ? const Center(child: Text("Conectado"))
            : const Center(child: Text("Desconectado")));
  }
}
