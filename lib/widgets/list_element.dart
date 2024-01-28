import 'package:flutter/material.dart';
import 'package:profiler_app/model/character.dart';
import 'package:profiler_app/screens/details_dialog.dart';
import 'package:profiler_app/screens/details_page.dart';

class ListElement extends StatelessWidget {
  final Character character;
  const ListElement({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(character.image),
      title: Text(character.name),
      subtitle: Text(character.species),

      // Implémentation avec la DetailPage
      // onTap: () => Navigator.of(context).push(MaterialPageRoute(
      //     builder: (context) => DetailsPage(character: character))),

      // Implémentation avec la Dialog
      onTap: () => showDialog(
        context: context,
        builder: (BuildContext context) => DetailsDialog(character: character),
      ),
    );
  }
}
