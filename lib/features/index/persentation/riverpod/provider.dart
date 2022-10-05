import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/core/endpoints/endpoints.dart';
import 'package:star_wars_app/features/index/data/datasource/iremote_datasource_sw.dart';
import 'package:star_wars_app/features/index/data/datasource/remote_datasource_sw.dart';
import 'package:star_wars_app/features/index/data/repository/sw_repository.dart';
import 'package:star_wars_app/features/index/data/model/report_model.dart';
import 'package:star_wars_app/features/index/domain/repository/isw_repository.dart';
import 'package:star_wars_app/features/index/domain/usecases/get_all_characters.dart';
import 'package:star_wars_app/features/index/domain/usecases/iget_all_characters.dart';
import 'package:star_wars_app/features/index/domain/usecases/ireport_sighting.dart';
import 'package:star_wars_app/features/index/domain/usecases/report_sighting.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_state.dart';

//Data
final swDatasource = Provider<IRemoteDatasourceSW>(
  (ref) => RemoteDatasourceSW(),
);
//Repository
final starWarsRepository = Provider<IStarWarsRepository>(
    (ref) => StarWarsRepository(ref.watch(swDatasource)));
//Domain
final reportSighting = Provider<IReportSighting>(
    (ref) => ReportSighting(ref.watch(starWarsRepository)));
//Presentation
final reportResponse =
    FutureProvider.family<dynamic, ReportModel>((ref, report) async {
  return await ref.watch(reportSighting).reportSighting(report);
});

class CharacterNotifier extends StateNotifier<StarWarsState> {
  // Notifier constructor - call functions on provider initialization
  CharacterNotifier() : super(const StarWarsState()) {
    loadCharacters(Endpoints.swapiEndpoint);
  }

  loadCharacters(String url) async {
    state = state.copyWith(isLoading: true);
    final IRemoteDatasourceSW swDatasource = RemoteDatasourceSW();
    final IStarWarsRepository swCharacterRepository =
        StarWarsRepository(swDatasource);
    final IGetAllCharacters getSWCharacters =
        GetAllCharacter(swCharacterRepository);
    final swCharacters = await getSWCharacters.getPage(url);

    state = swCharacters;
  }
}
