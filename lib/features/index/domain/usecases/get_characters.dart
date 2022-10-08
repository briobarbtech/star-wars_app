import 'package:star_wars_app/features/index/domain/repository/isw_repository.dart';
import 'package:star_wars_app/features/index/domain/usecases/iget_characters.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_state.dart';

class GetCharacters extends IGetCharacters {
  final IStarWarsRepository characterRepository;
  GetCharacters(this.characterRepository);

  @override
  Future<StarWarsState> getPage(String page) {
    return characterRepository.getPage(page);
  }
}
