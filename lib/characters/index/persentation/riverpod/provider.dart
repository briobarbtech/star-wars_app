import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/characters/index/data/datasource/local_datasource/ilocal_storage_datasource_sw.dart';
import 'package:star_wars_app/characters/index/data/datasource/local_datasource/local_storage_datasource_sw.dart';
import 'package:star_wars_app/characters/index/data/datasource/remote_datasource/iremote_datasource_sw.dart';
import 'package:star_wars_app/characters/index/data/datasource/remote_datasource/remote_datasource_sw.dart';
import 'package:star_wars_app/characters/index/data/freezed/connection_state.dart';
import 'package:star_wars_app/characters/index/data/freezed/report_state.dart';
import 'package:star_wars_app/characters/index/data/freezed/starwars_state.dart';
import 'package:star_wars_app/characters/index/data/repository/sw_local_repository.dart';
import 'package:star_wars_app/characters/index/domain/repository/isw_repository_local.dart';
import 'package:star_wars_app/characters/index/domain/usecases/get_from_local_storage.dart';
import 'package:star_wars_app/characters/index/domain/usecases/iget_from_local_storage.dart';
import 'package:star_wars_app/core/endpoints/endpoints.dart';
import 'package:star_wars_app/characters/index/data/repository/sw_repository.dart';
import 'package:star_wars_app/characters/index/domain/repository/isw_repository.dart';
import 'package:star_wars_app/characters/index/domain/usecases/get_characters.dart';
import 'package:star_wars_app/characters/index/domain/usecases/iget_characters.dart';
import 'package:star_wars_app/characters/index/domain/usecases/ireport_sighting.dart';
import 'package:star_wars_app/characters/index/domain/usecases/report_sighting.dart';

class CharacterNotifier extends StateNotifier<StarWarsState> {
  // Notifier constructor - call functions on provider initialization
  CharacterNotifier() : super(const StarWarsState()) {
    loadCharacters(Endpoints.mongoDBEndpoint);
  }

  loadCharacters(String url) async {
    state = state.copyWith(isLoading: true);
    final StarWarsState starWarsState;
    // ************************ HIVE ************************* //
    final ILocalStorageDatasourceSW localStorageDatasourceSW =
        LocalStorageDatasourceSW();
    final IStarWarsRepositoryLocal starWarsRepositoryLocal =
        StarWarsRepositoryLocal(localStorageDatasourceSW);
    final IGetFromLocalStorage checkLocalStorage =
        GetFromLocalStorage(starWarsRepositoryLocal);
    final resultCheck = await checkLocalStorage.checkLocalStorage(url);
    // ****************************************************** //

    if (resultCheck) {
      print("Encontrado en local Storage");
      starWarsState = await checkLocalStorage.getFromLocalStorage(url);
    } else {
      print("Pedido a la Api");
      final IRemoteDatasourceSW starWarsStateDatasource = RemoteDatasourceSW();
      final IStarWarsRepository starWarsStateRepository =
          StarWarsRepository(starWarsStateDatasource);
      final IGetCharacters getstarWarsState =
          GetCharacters(starWarsStateRepository);
      starWarsState = await getstarWarsState.getPage(url);
      checkLocalStorage.saveIntoLocalStorage(url, starWarsState);
    }
    state = starWarsState;
  }

  Future<void> cleanLocalStorage() async {
    // ************************ HIVE ************************* //
    final ILocalStorageDatasourceSW localStorageDatasourceSW =
        LocalStorageDatasourceSW();
    final IStarWarsRepositoryLocal starWarsRepositoryLocal =
        StarWarsRepositoryLocal(localStorageDatasourceSW);
    final IGetFromLocalStorage getFromLocalStorage =
        GetFromLocalStorage(starWarsRepositoryLocal);
    await getFromLocalStorage.cleanLocalStorage();
    // ****************************************************** //
  }
}

class ConnectionStateNotifier extends StateNotifier<ConnectionStateSW> {
  ConnectionStateNotifier() : super(const ConnectionStateSW());
  switchState(bool valueIn) {
    state = state.copyWith(switchState: valueIn);
  }
}

class ReportStateNotifier extends StateNotifier<ReportState> {
  ReportStateNotifier() : super(const ReportState());
  reportSighting(report) async {
    final IRemoteDatasourceSW swDatasource = RemoteDatasourceSW();
    final IStarWarsRepository swCharacterRepository =
        StarWarsRepository(swDatasource);
    final IReportSighting reportSighting =
        ReportSighting(swCharacterRepository);
    final reportResponse = await reportSighting.reportSighting(report);
    state = state.copyWith(statusCode: reportResponse);
  }
}
