import 'package:flutter/material.dart';
import 'package:profiler_app/model/character.dart';

class DetailsPage extends StatelessWidget {
  final Character profile;

  const DetailsPage({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Profil - ${profile.name}"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(profile.image),
              Text("Nom : ${profile.name}"),
              Text("Espèce : ${profile.species}"),
              Text("Origine : ${profile.origin}"),
              Text("Status : ${profile.status}"),
            ],
          ),
        ));
  }
}


// class DetailsPage extends StatelessWidget {
//   final String name;
//   final String url;
//   final String species;
//   final String origin;

//   const DetailsPage(
//       {super.key,
//       required this.name,
//       required this.url,
//       required this.species,
//       required this.origin});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text("Profile - $name"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.network(url),
//               Text("Name : $name"),
//               Text("Spacies : $species"),
//               Text("Origin : $origin"),
//             ],
//           ),
//         ));
//   }
// }