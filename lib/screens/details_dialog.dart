import 'package:flutter/material.dart';
import 'package:profiler_app/model/character.dart';

class DetailsDialog extends StatelessWidget {
  final Character character;

  const DetailsDialog({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(character.name),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(character.image),
          Text("Espèce : ${character.species}"),
          Text("Origine : ${character.origin}"),
          Text("Status : ${character.status}"),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Fermer"),
        )
      ],
    );
  }
}
