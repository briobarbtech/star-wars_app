import 'package:star_wars_app/characters/index/domain/entities/planet.dart';
import 'package:star_wars_app/characters/index/domain/repository/isw_repository.dart';
import 'package:star_wars_app/characters/index/domain/usecases/iget_planet.dart';

class GetPlanet implements IGetPlanet {
  IStarWarsRepository starWarsRepository;
  GetPlanet(this.starWarsRepository);
  @override
  Future<Planet> getPlanet(String url) {
    return starWarsRepository.getPlanet(url);
  }
}
