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
      onTap: () => showDialog(
        context: context,
        builder: (BuildContext context) => DetailsDialog(character: character),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return SizedBox(
  //     height: 100,
  //     child: DecoratedBox(
  //       decoration: BoxDecoration(
  //         color: Colors.grey.shade100,
  //         border: const Border(
  //           top: BorderSide(),
  //           bottom: BorderSide(),
  //         ),
  //       ),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: Image.network(character.image),
  //           ),
  //           SizedBox(
  //             width: 200,
  //             child: Text(
  //               character.name,
  //               style: Theme.of(context)
  //                   .textTheme
  //                   .headlineMedium
  //                   ?.copyWith(color: Colors.blueGrey),
  //               overflow: TextOverflow.ellipsis,
  //             ),
  //           ),
  //           ElevatedButton(
  //             onPressed: () {
  //               Navigator.of(context).push(
  //                 MaterialPageRoute(
  //                   builder: (context) => DetailsPage(
  //                     profile: character,
  //                   ),
  //                 ),
  //               );
  //             },
  //             child: const Text("Détails"),
  //           ),
  //           const SizedBox(width: 8),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
