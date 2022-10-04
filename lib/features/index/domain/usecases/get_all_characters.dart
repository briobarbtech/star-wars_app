import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/domain/repository/icharacter_repository.dart';
import 'package:star_wars_app/features/index/domain/usecases/iget_all_characters.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_status.dart';

class GetAllCharacter extends IGetAllCharacters {
  final ICharacterRepository characterRepository;
  GetAllCharacter(this.characterRepository);
  @override
  Future<List<Character>> getAllCharacter() {
    return characterRepository.getAllCharacters();
  }

  @override
  Future<StarWarsStatus> getPage(page) {
    return characterRepository.getPage(page);
  }
}
