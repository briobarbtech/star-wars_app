import 'package:star_wars_app/characters/index/data/freezed/starwars_state.dart';
import 'package:star_wars_app/characters/index/domain/repository/isw_repository.dart';
import 'package:star_wars_app/characters/index/domain/usecases/iget_characters.dart';

class GetCharacters extends IGetCharacters {
  final IStarWarsRepository characterRepository;
  GetCharacters(this.characterRepository);

  @override
  Future<StarWarsState> getPage(String page) {
    return characterRepository.getPage(page);
  }
}
