import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/domain/repository/isw_repository.dart';
import 'package:star_wars_app/features/index/domain/usecases/iget_all_characters.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_status.dart';

class GetAllCharacter extends IGetAllCharacters {
  final IStarWarsRepository characterRepository;
  GetAllCharacter(this.characterRepository);
  @override
  Future<List<Character>> getAllCharacter() {
    return characterRepository.getAllCharacters();
  }

  @override
  Future<StarWarsStatus> getPage(String page) {
    return characterRepository.getPage(page);
  }
}
