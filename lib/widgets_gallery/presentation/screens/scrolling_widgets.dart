import 'package:flutter/material.dart';

import '../../data/repository/teams_repository.dart';

class ScrollingWidgets extends StatefulWidget {
  const ScrollingWidgets({super.key});

  @override
  State<ScrollingWidgets> createState() => _ScrollingWidgetsState();
}

class _ScrollingWidgetsState extends State<ScrollingWidgets> {
  final teams = TeamsRepository.teamsIdentification;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('veja'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: teams.length,
        itemExtent: 250,
        itemBuilder: ((context, index) {
          final teams = TeamsRepository.teamsIdentification.elementAt(index);
          return Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(teams.imagem),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    teams.nome,
                    style: const TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
