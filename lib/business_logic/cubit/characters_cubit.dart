// ignore_for_file: non_constant_identifier_names, unnecessary_this

import 'package:bloc/bloc.dart';
import 'package:breaking_bad_app/data/models/characters.dart';
import 'package:breaking_bad_app/data/repository/characters_repository.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  List<Character> characters = [];
  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List<Character> getAllCharacters() {
    charactersRepository.getAllCharacters().then((Characters) {
      emit(charactersLoaded(Characters));
      this.characters = Characters;
    });
    return characters;
  }
}
