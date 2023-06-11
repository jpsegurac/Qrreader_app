import 'package:flutter/material.dart';
import 'package:qrreader_app/widget/scan_button.dart';
import 'package:qrreader_app/widget/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

   
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial'),
        actions: [
          IconButton(onPressed: () {}, 
          icon: Icon(Icons.delete_forever),
          )
        ],
      ),
      body: Center(
        child: Text('HomePage'),
      ),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}