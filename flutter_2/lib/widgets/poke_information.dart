import 'package:flutter/material.dart';
import 'package:flutter_2/constants/constants.dart';
import 'package:flutter_2/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeInformation({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.w), color: Colors.white),
      child: Padding(
        padding: Constants.getDefaultPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: _buildInformationRow("Name", pokemon.name)),
            Expanded(child: _buildInformationRow("Height", pokemon.height)),
            Expanded(child: _buildInformationRow("Weight", pokemon.weight)),
            Expanded(child: _buildInformationRow("Spawn Time", pokemon.spawnTime)),
            Expanded(child: _buildInformationRow("Weakness", pokemon.weaknesses)),
            Expanded(child: _buildInformationRow("Pre Evolotion", pokemon.prevEvolution)),
            Expanded(child: _buildInformationRow("Next Evolotion", pokemon.nextEvolution)),
          ],
        ),
      ),
    );
  }
}

Row _buildInformationRow(String label, dynamic value) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        label,
        style: Constants.getPokeInfoLabelTextStyle(),
      ),
      if (value is List && value.isNotEmpty)
        Text(
          value.join(" , "),
          style: Constants.getPokeInfoTextStyle(),
        )
      else if (value == null)
        Text(
          "N/A",
          style: Constants.getPokeInfoTextStyle(),
        )
      else
        Text(value)
    ],
  );
}
