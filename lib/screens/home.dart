import 'package:flutter/material.dart';
import 'package:profiler_app/model/character.dart';
import 'package:profiler_app/screens/details_page.dart';
import 'package:profiler_app/service/characters_service.dart';
import 'package:profiler_app/widgets/list_element.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var profiles = CharactersService().profiles;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Rick & Morty - Profiler"),
      ),
      body: ListView.builder(
        itemCount: profiles.length,
        itemBuilder: (context, index) {
          return ListElement(character: profiles[index]);
        },
      ),
    );
  }
}

// Widget exercice3(BuildContext context, List<Character> profiles) {
//   return ListView.builder(
//     itemCount: profiles.length,
//     itemBuilder: (context, index) {
//       return ListElement(character: profiles[index]);
//     },
//   );
// }

// Widget exercice1(BuildContext context) {
//   return Column(
//     children: [
//       SizedBox(
//         height: 100,
//         child: DecoratedBox(
//           decoration: BoxDecoration(
//             color: Colors.grey.shade100,
//             border: const Border(
//               top: BorderSide(),
//               bottom: BorderSide(),
//             ),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Image.network(
//                     "https://rickandmortyapi.com/api/character/avatar/1.jpeg"),
//               ),
//               Text(
//                 "Rick Sanchez",
//                 style: Theme.of(context)
//                     .textTheme
//                     .headlineMedium
//                     ?.copyWith(color: Colors.blueGrey),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.of(context).push(MaterialPageRoute(
//                       builder: (context) => const DetailsPage(
//                             name: "Rick Sanchez",
//                             species: "Human",
//                             url:
//                                 "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
//                             origin: "Earth",
//                           )));
//                 },
//                 child: const Text("Détails"),
//               ),
//               const SizedBox(width: 8),
//             ],
//           ),
//         ),
//       ),
//     ],
//   );
// }

// Widget exercice2(BuildContext context, List<Character> profiles) {
//   return ListView(
//     children: [
//       ListElement(character: profiles[0]),
//       ListElement(character: profiles[1]),
//       ListElement(character: profiles[2]),
//       ListElement(character: profiles[3]),
//       ListElement(character: profiles[4]),
//       ListElement(character: profiles[5]),
//       ListElement(character: profiles[0]),
//       ListElement(character: profiles[1]),
//       ListElement(character: profiles[2]),
//       ListElement(character: profiles[3]),
//       ListElement(character: profiles[4]),
//       ListElement(character: profiles[5]),
//     ],
//   );
// }
