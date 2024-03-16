import 'package:breaking_bad_app/data/models/characters.dart';
import 'package:breaking_bad_app/data/web_services/characters_web_servcies.dart';

class CharactersRepository {
  final CharactersWebService charactersWebService;

  CharactersRepository(this.charactersWebService);

  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersWebService.getAllCharacters();
    return characters
        .map((character) => Character.fromJson(character))
        .toList();
  }
}
