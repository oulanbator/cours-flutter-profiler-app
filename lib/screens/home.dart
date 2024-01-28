import 'package:flutter/material.dart';
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
