import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/characters/index/data/freezed/connection_state.dart';
import 'package:star_wars_app/characters/index/persentation/riverpod/provider.dart';

class ConnectionVerifier extends ConsumerWidget {
  const ConnectionVerifier({required this.swichtState, Key? key})
      : super(key: key);
  final StateNotifierProvider<ConnectionStateNotifier, ConnectionStateSW>
      swichtState;

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
