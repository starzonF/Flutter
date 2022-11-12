import 'package:flutter/material.dart';
import 'package:flutter_2/widgets/app_title.dart';
import 'package:flutter_2/widgets/pokemon_List.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => Column(
          children: const [
            AppTitle(),
            Expanded(child: PokemonList()),
          ],
        ),
      ),
    );
  }
}
