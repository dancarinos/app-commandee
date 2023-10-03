import 'package:flutter/material.dart';
import 'package:teste/widgets/cardapio/chip_filters.dart';
import 'package:teste/widgets/cardapio/lista_items.dart';
import 'package:teste/widgets/search_bar.dart';

class CardapioPage extends StatefulWidget {
  const CardapioPage({super.key});

  @override
  State<CardapioPage> createState() => _CardapioPageState();
}

class _CardapioPageState extends State<CardapioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Esta é a nossa tela mágica! 
        appBar: AppBar(
          title: const Text('Cardápio'),
          centerTitle: true,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          leading: BackButton(onPressed: () {
            Navigator.pop(context);
          },),
         
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: Column(
            children: [


              Filtros(),


              CustomSearchBar(),

              
              Padding(
                padding: const EdgeInsets.all(8),
                child: ListaItems(),
              ),
            ],
          ),
        ),
    );
  }
}
