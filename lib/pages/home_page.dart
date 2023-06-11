import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrreader_app/pages/pages.dart';
import 'package:qrreader_app/providers/ui_provider.dart';
import 'package:qrreader_app/widget/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

   
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial'),
        actions: [
          IconButton(onPressed: () {}, 
          icon: const Icon(Icons.delete_forever),
          )
        ],
      ),
      body:  const _HomePageBody(),
      bottomNavigationBar: const CustomNavigationBar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody();

  @override
  Widget build(BuildContext context) {

    //obtener el select menu opt
    final uiProvider = Provider.of<UiProvider>(context);
    

    //cambiar para mostrar pagina respectiva

    
    final currentIndex = uiProvider.selectedMenuOpt;

    switch(currentIndex){

      case 0:
        return const  MapasPage();

      case 1: 
        return const DirectionsPage();

      default:
        return const MapasPage();

    }
  }
}