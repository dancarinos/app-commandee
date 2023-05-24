import 'package:flutter/material.dart';

class Commanda extends StatelessWidget {
  Commanda({super.key, required this.nome, required this.descricao});

  String nome;
  String descricao;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            title: Text(nome,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            subtitle: Text(descricao,
              style: const TextStyle(fontSize: 15),
            ),
            trailing: const Icon(Icons.arrow_forward),
          )),
    );
  }
}