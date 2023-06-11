import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrreader_app/pages/pages.dart';
import 'package:qrreader_app/providers/ui_provider.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) =>  UiProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home': (_) =>  const HomePage() ,
          'map' :(_) => const MapPage(),
        },
        theme: ThemeData(
          primaryColor: Colors.teal,
          appBarTheme: const AppBarTheme(color: Colors.teal),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.deepOrange)
        )
      ),
    );
  }
}