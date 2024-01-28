import 'package:flutter/material.dart';
import 'package:profiler_app/model/character.dart';

class DetailsPage extends StatelessWidget {
  final Character character;

  const DetailsPage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Profil - ${character.name}"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(character.image),
              Text("Nom : ${character.name}"),
              Text("Espèce : ${character.species}"),
              Text("Origine : ${character.origin}"),
              Text("Status : ${character.status}"),
            ],
          ),
        ));
  }
}
