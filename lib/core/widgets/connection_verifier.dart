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
    final state = ref.watch(swichtState).switchState;
    return Container(
        height: 60,
        constraints: const BoxConstraints(maxHeight: 60),
        decoration: BoxDecoration(
            color: state
                ? Theme.of(context).colorScheme.tertiary
                : Theme.of(context).colorScheme.inversePrimary),
        child: state
            ? const Center(child: Text("Connected"))
            : const Center(child: Text("Disconnected")));
  }
}
