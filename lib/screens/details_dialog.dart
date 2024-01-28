import 'package:flutter/material.dart';
import 'package:profiler_app/model/character.dart';

class DetailsDialog extends StatelessWidget {
  final Character character;

  const DetailsDialog({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(character.image),
            Text("Nom : ${character.name}"),
            Text("Espèce : ${character.species}"),
            Text("Origine : ${character.origin}"),
            Text("Status : ${character.status}"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Close"),
            )
          ],
        ),
      ),
    );
  }
}
