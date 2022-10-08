import 'package:hive/hive.dart';
import 'package:star_wars_app/characters/index/data/freezed/starwars_state.dart';

part 'starwars_state_hive.g.dart';

@HiveType(typeId: 1)
class StarWarsStateHive {
  StarWarsStateHive(
      {required this.listCharacter,
      required this.previous,
      required this.next});
  @HiveField(0)
  List<Map<String, dynamic>> listCharacter;
  @HiveField(1)
  String previous;
  @HiveField(2)
  String next;

  factory StarWarsStateHive.fromMovieEntity(StarWarsState starWarsState) {
    return StarWarsStateHive(
      listCharacter: starWarsState.characters.map((e) => e.toMap()).toList(),
      previous: starWarsState.previous,
      next: starWarsState.next,
    );
  }
}
