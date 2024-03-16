// ignore_for_file: camel_case_types

part of 'characters_cubit.dart';

@immutable
sealed class CharactersState {}

final class CharactersInitial extends CharactersState {}

class charactersLoaded extends CharactersState {
  final List<Character> characters;
  charactersLoaded(this.characters);
}
