// Datasource

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/core/endpoints/endpoints.dart';
import 'package:star_wars_app/features/index/data/datasource/iremote_datasource_sw.dart';
import 'package:star_wars_app/features/index/data/datasource/remote_datasource_sw.dart';
import 'package:star_wars_app/features/index/data/model/character_model.dart';
import 'package:star_wars_app/features/index/data/repository/character_repository.dart';
import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/domain/repository/icharacter_repository.dart';
import 'package:star_wars_app/features/index/domain/usecases/get_all_characters.dart';
import 'package:star_wars_app/features/index/domain/usecases/iget_all_characters.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_status.dart';

final swCharacterDatasource = Provider<IRemoteDatasourceSW>(
  (ref) => RemoteDatasourceSW(),
);
//Repository
final swCharacterRepository = Provider<ICharacterRepository>(
    (ref) => CharacterRepository(ref.watch(swCharacterDatasource)));
//Domain
final getAllCharacters = Provider<IGetAllCharacters>(
    (ref) => GetAllCharacter(ref.watch(swCharacterRepository)));
//Presentation
final charactersData = FutureProvider<List<Character>>((ref) async {
  return ref.watch(getAllCharacters).getAllCharacter();
});

class CharacterNotifier extends StateNotifier<StarWarsStatus> {
  // Notifier constructor - call functions on provider initialization
  CharacterNotifier() : super(const StarWarsStatus()) {
    loadCharacters(Endpoints.swapiEndpoint);
  }

  loadCharacters(String url) async {
    state = state.copyWith(isLoading: true);
    // TODO: actualizar la lista de personajes con los que trae el caso de uso
    final swCharacters = await RemoteDatasourceSW().getPage(url);
    state = swCharacters;
  }
}

final characterProvider =
    StateNotifierProvider<CharacterNotifier, StarWarsStatus>(
        ((ref) => CharacterNotifier()));
