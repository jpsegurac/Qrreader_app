import 'package:flutter/material.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      child: const Icon(Icons.filter_center_focus),
      onPressed: () async {
        // String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#3d8bef','Cancelar',false,ScanMode.QR);

        // const barcodeScanRes = 'https://jean-segura.com';
      },
    );
  }
}