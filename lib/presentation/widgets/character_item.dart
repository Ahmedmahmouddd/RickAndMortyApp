// ignore_for_file: sort_child_properties_last

import 'package:breaking_bad_app/constants/my_colors.dart';
import 'package:breaking_bad_app/data/models/characters.dart';
import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
          color: MyColors.myWhite, borderRadius: BorderRadius.circular(8)),
      child: GridTile(
        child: Container(
          color: MyColors.myGrey,
          child: character.image!.isNotEmpty
              ? const FadeInImage(
                  width: double.infinity,
                  height: double.infinity,
                  placeholder: AssetImage('assets/images/loading.gif'),
                  image: AssetImage('assets/images/LH44.jpg'),
                  fit: BoxFit.cover,
                )
              : Image.asset('assets/images/placeholder.jpg'),
        ),
        footer: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          color: Colors.black54,
          alignment: Alignment.bottomCenter,
          child: Text(
            ' ${character.name}',
            style: const TextStyle(
              height: 1.3,
              fontSize: 16,
              color: MyColors.myWhite,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
