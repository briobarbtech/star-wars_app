// Datasource

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/core/endpoints/endpoints.dart';
import 'package:star_wars_app/features/index/data/datasource/iremote_datasource_sw.dart';
import 'package:star_wars_app/features/index/data/datasource/remote_datasource_sw.dart';
import 'package:star_wars_app/features/index/data/repository/sw_repository.dart';
import 'package:star_wars_app/features/index/domain/repository/isw_repository.dart';
import 'package:star_wars_app/features/index/domain/usecases/get_all_characters.dart';
import 'package:star_wars_app/features/index/domain/usecases/iget_all_characters.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_status.dart';

class CharacterNotifier extends StateNotifier<StarWarsStatus> {
  // Notifier constructor - call functions on provider initialization
  CharacterNotifier() : super(const StarWarsStatus()) {
    loadCharacters(Endpoints.swapiEndpoint);
  }

  loadCharacters(String url) async {
    state = state.copyWith(isLoading: true);
    // TODO: actualizar la lista de personajes con los que trae el caso de uso
    final IRemoteDatasourceSW swDatasource = RemoteDatasourceSW();
    final IStarWarsRepository swCharacterRepository =
        StarWarsRepository(swDatasource);
    final IGetAllCharacters getSWCharacters =
        GetAllCharacter(swCharacterRepository);
    final swCharacters = await getSWCharacters.getPage(url);

    state = swCharacters;
  }
}
